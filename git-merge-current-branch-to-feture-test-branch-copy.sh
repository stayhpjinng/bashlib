#!/bin/sh

# 合并当前分支到指定分支
# 使用方式： gmtf feturexx
gmtf() {
    git add .
    git stash
    # 获取当前分支
    cb=$(git symbolic-ref --short -q HEAD)
    if [ $cb = "" ]; then
        echo "error: 请输入你要合并到哪个分支"
    fi
    git checkout $1
    git pull
    git merge $cb
    git push
    git checkout $cb
    git stash pop
}

# 使用方式： gmtf1
gmtf1() {
    git stash
    # 获取当前分支
    cb = $(git symbolic-ref --short -q HEAD)
    git checkout feture-test1
    git merge $cb
    git checkout $cb
    git stash pop
}

# 使用方式： gmtf2
gmtf2() {
    git stash
    # 获取当前分支
    cb = $(git symbolic-ref --short -q HEAD)
    git checkout feture-test2
    git merge $cb
    git checkout $cb
    git stash pop
}

# 使用方式： gmtf3
gmtf3() {
    git stash
    # 获取当前分支
    cb = $(git symbolic-ref --short -q HEAD)
    git checkout feture-test3
    git merge $cb
    git checkout $cb
    git stash pop
}

alias gmtf="gmtf"
alias gmtf1="gmtf"
alias gmtf2="gmtf"
alias gmtf3="gmtf"