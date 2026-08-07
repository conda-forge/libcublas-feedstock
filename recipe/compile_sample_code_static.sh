#!/bin/bash
set -e
set -x

[[ ${target_platform} == "linux-64" ]] && targetsDir="targets/x86_64-linux"
[[ ${target_platform} == "linux-ppc64le" ]] && targetsDir="targets/ppc64le-linux"
[[ ${target_platform} == "linux-aarch64" ]] && targetsDir="targets/sbsa-linux"

echo Compiler: $GCC

$GCC -I$PREFIX/${targetsDir}/include -L$PREFIX/${targetsDir}/lib -lcublas_static -lculibos -lcudart_static -lpthread -ldl test.c
