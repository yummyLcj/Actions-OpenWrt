#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >>feeds.conf.default

git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luck-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-zerotier.git package/luci-app-zerotier
git clone https://github.com/rufengsuixing/luci-app-onliner.git package/luci-app-onliner
git clone https://github.com/rufengsuixing/luci-app-autoipsetadder.git package/luci-app-autoipsetadder
git clone https://github.com/rufengsuixing/auto-ipsetadder-for-openwrt.git package/auto-ipsetadder-for-openwrt

echo "src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default
