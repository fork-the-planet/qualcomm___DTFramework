#!/bin/bash
# 初始化所有子模块
git submodule init
cd libs/libfdt
git clone --filter=blob:none --no-checkout git@github.com:dgibson/dtc.git .
echo "libfdt/" > .git/info/sparse-checkout
git config core.sparseCheckout true
git pull origin main  # main是子模块的主分支，根据实际分支调整
