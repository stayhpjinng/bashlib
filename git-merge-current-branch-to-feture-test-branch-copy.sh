#!/bin/sh

# 合并当前分支到指定分支
# 使用方式： gmtf feturexx
gmtf() {
    git add .
    git commit -a
    # 获取当前分支
    cb=$(git symbolic-ref --short -q HEAD)
    echo $cb;
    echo $1;
    if [ -z $1 ]; then
        echo "error: 请输入你要合并到哪个分支"
        return
    fi
    git checkout $1
    git pull
    git merge $cb && git push && git checkout $cb
}

# 使用方式： gmtf1
gmtf1() {
    gmtf feature-test1
}

# 使用方式： gmtf2
gmtf2() {
    gmtf feture-test2
}

# 使用方式： gmtf3
gmtf3() {
    gmtf feture-test3
}