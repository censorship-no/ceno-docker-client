# A ready-to-run client for the CENO network

See <https://censorship.no/>.

## Building (developers only)

Build for the latest version of Ouinet with:

    $ sudo docker build -t equalitie/ceno-client .

Build for Ouinet version `vX.Y.Z` as `latest` with:

    $ sudo docker build --build-arg OUINET_VERSION=vX.Y.Z -t equalitie/ceno-client:vX.Y.Z -t equalitie/ceno-client:latest .

## Running the client

Run the client for the first time with:

    $ sudo docker run --name ceno-client -dv ceno:/var/opt/ouinet --network host --restart unless-stopped equalitie/ceno-client

This will start the client automatically along with the system.

Watch the client's output with:

    $ sudo docker logs -ft ceno-client

Subsequently, start/stop the client manually with:

    $ sudo docker start ceno-client
    $ sudo docker stop ceno-client
