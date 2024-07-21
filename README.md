# fastproxy
## 效果解释
- 这是一个通过点击desktop文件实现打开、关闭proxy的脚本，打开和关闭时会显示不同的图标效果通过 https://bbs.deepin.org/zh/post/264052 查看
- 此脚本实现图标变化可能比较有趣，可以通过修改脚本实现其他小任务
- 此仓库希望改名但是之前有过分享连链接，所以决定在2024/9/1左右完成改名

# 运行环境
- 本人不了解linux桌面环境，图标变化实现，应该要求桌面文件夹每次修改都能立刻重新刷新才能实现效果。关于打开、关闭proxy也是依赖于某个特定的桌面环境设置实现。
- 经过测试deepin 与ubuntu默认桌面环境都是正常执行

## 如何运行
- 运行go.sh即可
- ubuntu用户 需要修改脚本的 桌面路径 发现ubuntu桌面文件夹名字居然是 汉字“桌面" 然后注意赋予可执行权限
