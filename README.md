## Simple rsyncd
1. Start daemon
```
# mkdir ./tmp
# docker run -v `pwd`/tmp:/data --network host -it rsyncd
```

2. Copy files using `rsync`
```sh
# rsync -zav --delete --progress ./Dockerfile rsync://localhost/root/
```
