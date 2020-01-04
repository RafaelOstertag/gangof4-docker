FROM baseimage-build:1.0.0 AS build

ARG VERSION

RUN git clone https://github.com/RafaelOstertag/gangof4.git /src && \
    cd /src && \
    git checkout v${VERSION} && \
    mkdir -p /src/build
WORKDIR /src/build
RUN cmake .. -DCMAKE_BUILD_TYPE=Release && \
    cmake --build . -j 4 && \
    cd tests && \
    ctest .
RUN make DESTDIR=/install install

FROM baseimage-runtime:1.0.0
USER root:root
COPY --from=build /install/usr/local/ /usr/local/
USER app:app
ENTRYPOINT [ "/usr/local/bin/gangof4" ]
