#!/bin/bash

go run ../../_scripts_/cmd/gen-plot/main.go run/*.cfa_stats_hammock.json > hammock_results.txt
go run ../../_scripts_/cmd/gen-plot/main.go run/*.cfa_stats_interval.json > interval_results.txt
