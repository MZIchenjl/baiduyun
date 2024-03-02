# 百度云nas版


```shell
docker run -d \
    --name baiduapp \
    -p 8080:8080 \
    -v $PWD/data:/data \
    -v $PWD/download:/sdkpath/volume1 \
    --restart unless-stopped \
    mziokay/baidu
```
