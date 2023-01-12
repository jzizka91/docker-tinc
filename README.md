# Tinc

## Usage

* See `./config-sample` for configuration.
    * configure 
        * `tinc.conf`
        * `tinc-up`
        * `hosts`
        * generate private key

```
docker run \
    --rm -it \
    --net host \
    --name tinc \
    --cap-add=NET_ADMIN \
    --device=/dev/net/tun \
    --volume /root/config:/etc/tinc:rw \
    ghcr.io/jzizka91/docker-tinc:latest
```

## Useful utils

```
# generate private and public key
tincd -K 4096

# It's also possible to get some information out of running daemon tincd's:
kill -USR1 <tinc pid> - dumps the connection list
kill -USR2 <tinc pid> - dumps virtual network statistics
```

## Documentation

* `/etc/tinc` -> configuration
    * `/etc/tinc/rsa_key.priv` -> private key related to public key in `/etc/tinc/hosts/<node>`
    * `/etc/tinc/tinc.conf` -> tinc configuration
    * `/etc/tinc/tinc-down` -> steps if interface go down
    * `/etc/tinc/tinc-up` -> steps if interface go up

* `/etc/tinc/hosts` -> node configuration -> should be same on all nodes
