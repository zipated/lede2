#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package package/lienol
git clone src-git kenzo https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone https://github.com/kenzok8/small.git package/small
#git clone src-git vlmcsd https://github.com/pexcn/openwrt-vlmcsd package/vlmcsd
#git clone src-git unblockneteasemusic https://github.com/project-openwrt/luci-app-unblockneteasemusic package/unblockneteasemusic
git clone https://github.com/openwrt-dev/po2lmo.git
pushd po2lmo
make && sudo make install
popd
git clone https://github.com/BoringCat/minieap-openwrt.git package/minieap
git clone https://github.com/BoringCat/luci-app-minieap.git package/luci-app-minieap
git clone https://github.com/BoringCat/luci-app-mentohust.git package/luci-app-mentohust
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/mentohust
