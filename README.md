[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-busybox/pkgs/container/distroless-busybox)
[![Tags](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-busybox/pkgs/container/distroless-busybox)  
![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/size.svg)
![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/wasted.svg)
![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/efficiency.svg)  
![Critical](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/critical.svg)
![High](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/high.svg)
![Medium](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/medium.svg)
![Low](https://raw.githubusercontent.com/simons-containers/distroless-busybox/badges/.badges/main/low.svg)  
[![status](https://github.com/simons-containers/distroless-busybox/actions/workflows/deploy.yaml/badge.svg)](https://github.com/simons-containers/distroless-busybox/actions/workflows/deploy.yaml)
[![status](https://github.com/simons-containers/distroless-busybox/actions/workflows/update-versions.yaml/badge.svg)](https://github.com/simons-containers/distroless-busybox/actions/workflows/update-versions.yaml)

# Distroless BusyBox container

Bare-bones BusyBox only container image.

## Running

Default applet is `ash -l` for a login shell. Run other applets as args or interactively.

Example:

```bash
docker run -it --rm ghcr.io/simons-containers/distroless-busybox:latest whoami
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **BusyBox**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **BusyBox** - BusyBox: The Swiss Army Knife of Embedded Linux   
  https://busybox.net

