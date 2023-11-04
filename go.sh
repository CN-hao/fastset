#!/bin/bash

# 定义代理设置文件路径 标识是否已经打开代理
proxy_setting_file="$HOME/.config/goproxy/proxy_setting_file"
#拿到本脚本
install_dir="$(dirname "$(realpath "$0")")"


touch $HOME/Desktop/goproxy.desktop



# 检查代理文件是否存在
if [ -e "$proxy_setting_file" ]; then
  # 如果代理文件存在，表示这是第二次执行
  gsettings set org.gnome.system.proxy mode 'none'  # 关闭系统代理
  rm "$proxy_setting_file"  # 删除代理设置文件
  #更新桌面图标为 飞机降落
  desktopTemplate=$(cat $install_dir/desktopTemplate/downTemplate.desktop)
  echo "已关闭系统代理"
else
  # 如果代理文件不存在，表示这是第一次执行
  gsettings set org.gnome.system.proxy mode 'manual'  # 设置系统代理为手动
  mkdir -p "$(dirname "$proxy_setting_file")"  # 确保目录存在
  touch "$proxy_setting_file"  # 创建代理设置文件
  #更新桌面图标为 飞机起飞
   desktopTemplate=$(cat $install_dir/desktopTemplate/upTemplate.desktop)
  echo "已设置系统代理为手动模式"
fi

#替换install_dir 为安装目录
desktopTemplate="$(echo "$desktopTemplate" |sed "s#\$install_dir#$install_dir#g")"
echo "$desktopTemplate" > $HOME/Desktop/goproxy.desktop
