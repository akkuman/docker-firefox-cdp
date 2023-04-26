# Firefox-CDP

[中文版本](README_CN.md)

Now there are many libraries that support the cdp protocol to control the browser. Although firefox currently supports a subset of the cdp protocol, it can only monitor the local area and cannot make remote calls. Even if socat is used to forward traffic, the host header will be checked, so this image is created Allows us to conveniently call firefox's cdp protocol remotely.

The motivation for doing this is that chrome is not officially compatible with arm64. The memory alignment of some systems on arm64 is 64k. There is no way to run chrome normally. Try to use firefox to run it.

## Usage

```shell
docker run -dp 9222:80 akkuman/firefox-cdp
# or docker run -dp 9222:80 ghcr.io/akkuman/firefox-cdp
```