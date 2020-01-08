Build GangOf4 Docker image.

Build Image
---

In order to build the image, Docker has to be installed. Refer to the
[Docker Documentation](https://docs.docker.com/install/).

The image is built by issuing `./build.sh <VERSION>`, where
`<VERSION>` is a git version tag without the `v` prefix, as found in
the [GangOf4
Repository](https://github.com/RafaelOstertag/gangof4). For instance,
to build version `v1.2.1`, issue

    ./build 1.2.1

Run Image
---

After building the image, run it as such

    xhost local:
    docker run \
	 --rm \
	 --env DISPLAY=:0 \
     -v /tmp/.X11-unix:/tmp/.X11-unix gangof4:<VERSION>
    xhost -local:

`<VERSION>` corresponds to the version used when building the image.
