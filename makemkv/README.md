# makemkv

Dockerfile for running MakeMKV.

The included `runner` (the default command) will just decrypt the attached disk to an output volume.

example:
``` bash
docker run \
    --rm \
    --device /dev/sr* \
    --device /dev/sg* \
    -v /path/to/video/save:/output \
    -e  movie="Movie Name" \ # defaults to "video"
    makemkv
```
