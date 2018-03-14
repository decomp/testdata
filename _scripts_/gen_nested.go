//+build ignore

// gen_nested is a tool which generates C programs with a given number of nested
// if-statements. These programs are intended to stress test the
// implementations of various decompilation components and give an approximation
// of their time complexity.
//
// Example output for n=2:
//
//    int main(int argc, char **argv) {
//    	int x = 0;
//    	if (x < 1) {
//    		x++;
//    		if (x < 2) {
//    			x++;
//    		}
//    	}
//    	return x%113;
//    }
package main

import (
	"flag"
	"fmt"
	"strings"
)

const (
	pre = `
int main(int argc, char **argv) {
	int x = 0;`
	post = `
	return x%123;
}`
)

func main() {
	var n int
	flag.IntVar(&n, "n", 0, "Number of nested if-statements.")
	flag.Parse()

	fmt.Println(pre[1:])
	for i := 0; i < n; i++ {
		indent := strings.Repeat("\t", i)
		fmt.Printf("%s\tif (x < %d) {\n", indent, i+1)
		fmt.Printf("%s\t\tx++;\n", indent)
	}
	for i := n - 1; i >= 0; i-- {
		indent := strings.Repeat("\t", i)
		fmt.Printf("%s\t}\n", indent)
	}
	fmt.Println(post[1:])
}
