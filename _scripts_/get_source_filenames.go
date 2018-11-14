//+build ignore

package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"log"
	"sort"

	"github.com/llir/llvm/asm"
	"github.com/llir/llvm/ir/metadata"
	"github.com/pkg/errors"
)

func main() {
	flag.Parse()
	for _, llPath := range flag.Args() {
		funcs, err := getFuncs(llPath)
		if err != nil {
			log.Fatalf("unable to get functions of %q; %+v", llPath, err)
		}
		buf, err := json.MarshalIndent(funcs, "", "\t")
		if err != nil {
			log.Fatalf("unable to marshal JSON; %+v", err)
		}
		fmt.Println(string(buf))
	}
}

// Func specifies the file path of a function.
type Func struct {
	// Function name in LLVM IR.
	LLName string
	// Function name in C.
	CName string
	// Source code file name.
	Filename string
	// Directory of source file.
	Dir string
}

func getFuncs(llPath string) ([]*Func, error) {
	module, err := asm.ParseFile(llPath)
	if err != nil {
		return nil, errors.WithStack(err)
	}
	m := make(map[string]*Func)
	for _, f := range module.Funcs {
		if f.Blocks == nil {
			continue
		}
		fn := &Func{
			LLName: f.GlobalName,
		}
		for _, md := range f.Metadata {
			switch node := md.Node.(type) {
			case *metadata.MetadataDef:
				switch node := node.Node.(type) {
				case *metadata.DISubprogram:
					fn.CName = node.Name
					switch file := node.File.(type) {
					case *metadata.MetadataDef:
						switch file := file.Node.(type) {
						case *metadata.DIFile:
							fn.Filename = file.Filename
							fn.Dir = file.Directory
						}
					}
				}
			}
		}
		m[f.GlobalName] = fn
	}
	var keys []string
	for key := range m {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	var funcs []*Func
	for _, key := range keys {
		funcs = append(funcs, m[key])
	}
	return funcs, nil
}
