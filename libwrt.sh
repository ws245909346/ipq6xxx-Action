rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

# 修改默认IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# iStore
# echo >> feeds.conf.default
# echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
# ./scripts/feeds update istore
# ./scripts/feeds install -d y -p istore luci-app-store

git_sparse_clone main https://github.com/linkease/istore-ui app-store-ui
git_sparse_clone main https://github.com/linkease/istore luci
