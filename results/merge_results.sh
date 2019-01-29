#!/bin/bash

go run ../_scripts_/cmd/merge-results/main.go coreutils/run/*.cfa_stats_hammock.json sqlite/run/*.cfa_stats_hammock.json > hammock_results.json
go run ../_scripts_/cmd/merge-results/main.go coreutils/run/*.cfa_stats_interval.json sqlite/run/*.cfa_stats_interval.json > interval_results.json
