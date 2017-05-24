#!/bin/bash

git diff --word-diff=color $1 --word-diff-regex='([[:alnum:]])+' -p
