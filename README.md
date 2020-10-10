## Usage

Start daemon
```
# mkdir ./tmp
# docker run -v `pwd`/tmp:/data --network host -it rsyncd
```

Copy files using `rsync`
```
# rsync -zav --delete --progress ./Dockerfile rsync://localhost/root/
```
