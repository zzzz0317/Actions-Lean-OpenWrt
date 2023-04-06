#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 回退源码
#git reset --hard 52c8a13

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# 取消helloworld源注释（ssr-plus）
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加xiaorouji大passwall源
sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' feeds.conf.default

# 注释掉lean大默认packages源
#sed -i 's/^\(.*packages\)/#&/' feeds.conf.default

# 添加softethervpn升级的packages源
#sed -i '$a src-git packages https://github.com/lxhao61/packages.git' feeds.conf.default
