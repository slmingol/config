#!/bin/bash

for file in $(git diff --cached --name-only | grep "\.go")
do
	echo "(gofmt) $file"
	gofmt -w $file
done

