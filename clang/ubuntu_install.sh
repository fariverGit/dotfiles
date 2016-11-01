#!/usr/bin/env bash

. /etc/lsb-release

distrib="$(echo $DISTRIB_ID | awk '{print tolower($0)}')"
distrib_version="$DISTRIB_RELEASE"

# show system information
lsb_release -a

if [[ "$distrib_version" == "14.04" ]]; then
    sudo tee /etc/apt/sources.list.d/llvm.list > /dev/null << EOF
deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty main
deb-src http://apt.llvm.org/trusty/ llvm-toolchain-trusty main
# 3.8 
deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.8 main
deb-src http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.8 main
# 3.9 
deb http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.9 main
deb-src http://apt.llvm.org/trusty/ llvm-toolchain-trusty-3.9 main
EOF

elif [[ "$distrib_version" == "15.10" ]]; then
    sudo tee /etc/apt/sources.list.d/llvm.list > /dev/null << EOF
deb http://apt.llvm.org/wily/ llvm-toolchain-wily main
deb-src http://apt.llvm.org/wily/ llvm-toolchain-wily main
# 3.8 
deb http://apt.llvm.org/wily/ llvm-toolchain-wily-3.8 main
deb-src http://apt.llvm.org/wily/ llvm-toolchain-wily-3.8 main
# 3.9 
deb http://apt.llvm.org/wily/ llvm-toolchain-wily-3.9 main
deb-src http://apt.llvm.org/wily/ llvm-toolchain-wily-3.9 main
EOF

elif [[ "$distrib_version" == "16.04" ]]; then
    sudo tee /etc/apt/sources.list.d/llvm.list > /dev/null << EOF
deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial main
deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial main
# 3.8
deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.8 main
deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.8 main
# 3.9
deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main
deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main
EOF

else
    echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
fi


# wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -

# sudo -E apt-get update
sudo -E apt-get -y install \
        clang-3.8 \
        clang-3.8-doc \
        libclang-common-3.8-dev \
        libclang-3.8-dev \
        libclang1-3.8 \
        libclang1-3.8-dbg \
        libllvm-3.8-ocaml-dev \
        libllvm3.8 \
        libllvm3.8-dbg \
        lldb-3.8 \
        llvm-3.8 \
        llvm-3.8-dev \
        llvm-3.8-doc \
        llvm-3.8-examples \
        llvm-3.8-runtime \
        clang-modernize-3.8 \
        clang-format-3.8 \
        python-clang-3.8 \
        lldb-3.8-dev
