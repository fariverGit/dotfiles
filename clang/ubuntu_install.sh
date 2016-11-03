#!/usr/bin/env bash

sudo -E apt-get update
sudo -E apt-get install -y --no-install-recommends \
        clang-3.8 \
        clang-format-3.8 \
        clang-tidy-3.8 \
        libclang-3.8-dev \
        libclang-common-3.8-dev \
        libclang1-3.8 \
        libclang1-3.8-dbg \
        liblldb-3.8 \
        liblldb-3.8-dbg \
        liblldb-3.8-dev \
        libllvm-3.8-ocaml-dev \
        libllvm3.8v4 \
        libllvm3.8v4-dbg \
        lldb-3.8 \
        lldb-3.8-dev \
        llvm-3.8 \
        llvm-3.8-dev \
        llvm-3.8-runtime \
        python-clang-3.8 \
        python-lldb-3.8 \
