# Firefox-CDP

现在有很多库支持 cdp 协议来控制浏览器，虽然目前firefox支持cdp协议的子集，但是只能监听到本地，没法远程调用，即使使用 socat 转发流量也会检查 host 头，所以创建了这个镜像使我们能够方便的远程调用firefox的cdp协议。

做这个的动机是chrome官方未完全适配 arm64，有些系统在arm64上的内存对齐是64k，没办法正常运行chrome，尝试使用firefox是可以运行的。

## 用法

```shell
docker run -dp 9222:80 akkuman/firefox-cdp
# 或者 docker run -dp 9222:80 ghcr.io/akkuman/firefox-cdp
```