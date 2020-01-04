FROM baseimage:1.0.0

RUN apk add sdl2 sdl2_mixer sdl2_image sdl2_ttf libstdc++
RUN addgroup -g 39 dri && addgroup -g 998 render
RUN adduser app dri && adduser app render
USER app:app
