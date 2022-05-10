#!/bin/bash
#====================================================================
# Copyright (c) 2019-2021 iplcdn <https://iplcdn.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/MuaCat/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#====================================================================

# 取消插件注释
# fw876/helloworld (Uncomment a feed source)

#sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git xiaoqingfeng https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng' >>feeds.conf.default

#echo ' src-git OpenClash https://github.com/vernesong/OpenClash'  feeds.conf.default
#sed -i '$a src-git OpenAppFilter https://github.com/destan19/OpenAppFilter'  feeds.conf.default

### 修改主题文件
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

#====================================================================
