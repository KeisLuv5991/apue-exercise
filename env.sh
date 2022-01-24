#!/usr/bin/env bash
# -- env.sh --

# buildone <source> : build single source code
function buildone {
    filename=$1
    target="${filename%.*}"
    env LIBRARY_PATH=$HOME/apueExercise/apue.3e/lib/ \
        C_INCLUDE_PATH=$HOME/apueExercise/apue.3e/include/ \
        gcc $filename -o $target -lapue
}