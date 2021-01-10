# 关于
常用 git 的快捷操作脚本， 

## 安装方法
1. 克隆本项目到本地

2. 在 `.bashrc` 文件中新增一行：

注意: 将下面用到的 /example/dir/ 替换为你本地项目所在目录

`.bashrc` 文件所在位置为 `~/.bashrc`
```shell
# 注意将 /example/dir/ 替换为你本地项目所在目录
/example/dir/bashlib/index.sh
```

3. 给文件授予执行权限
```shell
# 权限可根据实际情况授予，授予可执行权限即可
chmod -R 700 /example/dir/bashlib
# 或者
chmod u+x /example/dir/bashlib
```

4. 重启命令行工具即可

## 使用方法

* gmtf 命令

```shell
# 将目前所在分支合并到 xxxx 所指定的分支
gmtf xxxx
```

* gmtf1

```shell
# 将目前所在分支合并到 feture-test
gmtf1 
```

* gmtf2

```shell
# 将目前所在分支合并到 feture-test2
gmtf2
```

* gmtf1

```shell
# 将目前所在分支合并到 feture-test3
gmtf2=3
```