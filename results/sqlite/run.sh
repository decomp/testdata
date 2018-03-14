#!/bin/bash

for ll_path in run/*.ll; do
	echo -e "\n=== [ ${ll_path} ] =======================================\n"
	go run ../../_scripts_/gen-cfa-results.go ${ll_path}
done
