# A ready-to-run client for the CENO network

See <https://censorship.no/>.

Build for the latest version of Ouinet with:

    $ docker build -t equalitie/ceno-client .

Build for Ouinet version `vX.Y.Z` as `latest` with:

    $ docker build --build-arg OUINET_VERSION=vX.Y.Z -t equalitie/ceno-client:vX.Y.Z -t equalitie/ceno-client:latest .

Run with:

    $ docker run --name ceno-client -dv ceno:/var/opt/ouinet --network host --restart unless-stopped equalitie/ceno-client

Watch logs with:

    $ docker logs -ft ceno-client

Start/stop manually with:

    $ docker start ceno-client
    $ docker stop ceno-client
