## Usage

Start daemon
```
# echo "rsyncclient:takemymoney" > rsyncd.secret
# chmod 0600 rsyncd.secret # only readable by root
# docker run \
  -v `pwd`/public:/data \
  --mount type=bind,source=`pwd`/rsyncd.secret,target=/tmp/rsyncd.secret \
  --network host \
  -it approach0/rsyncd
```

Copy files using `rsync`
```
# export RSYNC_PASSWORD=takemymoney
# rsync -zav --delete --progress ./local-directory-to-sync rsync://rsyncclient@localhost/data
```
