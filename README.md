# Distroless BusyBox container

Bare-bones BusyBox only container image.

## Running

Default applet is `ash -l` for a login shell. Run other applets as args or interactively.

Example:

```bash
docker run -it --rm ghcr.io/simons-containers/distroless-busybox:latest whoami
```

## Building

| Arg | Description |
|---|---|
| `BUSYBOX_VERSION` | Version of BusyBox to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-busybox:$(yq -r .busybox versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) -f Containerfile .
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **BusyBox**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **BusyBox** - BusyBox: The Swiss Army Knife of Embedded Linux   
  https://busybox.net

