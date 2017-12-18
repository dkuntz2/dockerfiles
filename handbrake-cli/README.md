# handbrakecli

An image with handbrake-cli and libdvdcss2 installed.

Not uploaded to dockerhub because I'm not entirely sure about their policies, and it's also not that hard to just build this image yourself.

``` bash
docker build -t handbrakecli .
```

## runner

The Dockerfile in the `runner` directory builds on this image, and adds a basic runner script.
The script looks at `/dev/sr0` as a disk image, and should be given an `/output` volume to put the ripped DVD.

``` bash
pushd runner; docker build -t handbrake-rip .; popd
```

``` bash
docker run \
    --rm \
    --device /dev/sr0 \
    -v /path/to/video/save:/output \
    -e movie="Movie Name" \
    handbrake-rip
```
