# A ready-to-run client for the CENO network

See <https://censorship.no/>.

## Building (developers only)

Build for the latest version of Ouinet with:

    $ sudo docker build -t equalitie/ceno-client .

Build for Ouinet version `vX.Y.Z` as `latest` with:

    $ sudo docker build --build-arg OUINET_VERSION=vX.Y.Z -t equalitie/ceno-client:vX.Y.Z -t equalitie/ceno-client:latest .

## Running the client

Run with:

    $ sudo docker run --name ceno-client -dv ceno:/var/opt/ouinet --network host --restart unless-stopped equalitie/ceno-client

Watch logs with:

    $ sudo docker logs -ft ceno-client

Start/stop manually with:

    $ sudo docker start ceno-client
    $ sudo docker stop ceno-client
