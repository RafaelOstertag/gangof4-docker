FROM baseimage:1.0.0

RUN apk add git g++ cppunit-dev sdl2-dev sdl2_mixer-dev sdl2_image-dev sdl2_ttf-dev cmake make
RUN install -d -o build -g build -m 0700 /src
RUN install -d -o build -g build -m 0700 /install
USER build:build
