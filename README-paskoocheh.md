# Instructions to deploy a pre-configured Paskoocheh Docker client

See the [README](./README.md) for more details on the operation of this setup (just replace `ceno-client` with `paskoocheh-client`).

This assumes that a static cache exists at `/path/to/static-cache`. If not, create an empty one:

```
$ mkdir -p /path/to/static-cache/.ouinet
```

**Warning:** Access from the machine to Docker Hub is needed!

## If you want to use the name "Paskoocheh"

```
$ cd /path/to/static-cache/..
$ sudo docker run --name paskoocheh-client -dv paskoocheh:/var/opt/ouinet \
  --network host --restart unless-stopped \
  -v $PWD/static-cache:/var/opt/ouinet-static-cache:ro \
  equalitie/paskoocheh-client
```

## If you want to use some other name

You either need a clone of this branch:

```
$ NAME=whatever
$ git clone -b paskoocheh https://github.com/censorship-no/ceno-docker-client.git $NAME-client
```

or a copy of this branch's `Dockerfile`, `ouinet-client.conf` and `ssl-inj-cert.pem` in the same directory:

```
$ NAME=whatever
$ mkdir $NAME-client
(now copy those files into $NAME-client)
```

Run:

```
$ cd $NAME-client
$ sudo docker build -t $NAME-client .  # mind the final dot
$ cd /path/to/static-cache/..
$ sudo docker run --name $NAME-client -dv $NAME:/var/opt/ouinet \
  --network host --restart unless-stopped \
  -v $PWD/static-cache:/var/opt/ouinet-static-cache:ro \
  $NAME-client
```

You may remove the `$NAME-client` directory.
