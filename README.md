# Tinc for Docker

Only 3MB compressed!

## Usage
```
docker run -d \
    --name tinc \
    --net=host \
    --device=/dev/net/tun \
    --cap-add NET_ADMIN \
    --volume /srv/tinc:/etc/tinc \
    slang800/tinc start -D
```
