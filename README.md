# Pico Gateway HAL and packet forwarder for Docker

## Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/theo024/pico-gateway/Dockerfile)
- [`arm32v7` (*Dockerfile.arm32v7*)](https://github.com/theo024/pico-gateway/Dockerfile.arm32v7)

## Quick Start

Start the pico-gateway container by passing the config file (global_conf.json) and the serial device (ex: /dev/ttyACM0)

    docker run -v $PWD/global_conf.json:/gateway/picoGW_packet_forwarder/lora_pkt_fwd/global_conf.json:ro --device=/dev/ttyACM0 -p 1680:1680/udp theo024/pico-gateway

## Image Variants

| Image | Arch |
|-------|------|
| `theo024/pico-gateway:latest` | `amd64` |
| `theo024/pico-gateway:arm32v7` | `arm32v7` |

## License

Copyright (c) 2018, Théo Lévesque

Copyright (c) 2013, SEMTECH S.A.

Copyright (c) 2012 Krzysztof Gabis