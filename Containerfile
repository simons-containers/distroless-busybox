FROM archlinux:base-devel-20260308.0.497099 AS builder

ARG BUSYBOX_VERSION
ARG BUSYBOX_SOURCE=https://busybox.net/downloads/busybox-${BUSYBOX_VERSION}.tar.bz2

WORKDIR /build/busybox
RUN curl --silent --show-error --location --output busybox.tar.bz2 \
    "${BUSYBOX_SOURCE}" \
    && tar xf busybox.tar.bz2 --strip-components=1 \
    && export PATH=$PATH:/usr/bin/core_perl/ \
    && make defconfig \
    && sed -i 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' .config \
    && sed -i 's/^CONFIG_TC=y$/# CONFIG_TC is not set/' .config \
    && make

FROM scratch

ARG BUSYBOX_VERSION

COPY --from=builder /build/busybox/busybox /usr/bin/busybox
COPY passwd /etc/passwd
COPY shadow /etc/shadow
COPY profile /etc/profile

ENV PATH=/usr/bin
RUN ["busybox", "--install", "-s", "/usr/bin"]
RUN ["busybox", "ln", "-s", "usr/bin", "/bin"]
RUN ["busybox", "chmod", "4755", "/usr/bin/busybox"]

ENTRYPOINT ["/usr/bin/busybox"]
CMD ["ash", "-l"]

LABEL org.opencontainers.image.title="distroless busybox"
LABEL org.opencontainers.image.description="distroless busybox"
LABEL org.opencontainers.image.version="${BUSYBOX_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-busybox"
