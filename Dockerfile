FROM buildpack-deps:stretch

LABEL maintainer="Théo Lévesque <theo.levesque.024@gmail.com>"

WORKDIR /gateway

RUN git clone https://github.com/Lora-net/picoGW_hal.git && \
    git clone https://github.com/Lora-net/picoGW_packet_forwarder.git && \
    cd /gateway/picoGW_hal && make clean all && \
    cd /gateway/picoGW_packet_forwarder && make clean all


FROM debian:stretch

WORKDIR /gateway
COPY --from=0 /gateway .

WORKDIR /gateway/picoGW_packet_forwarder/lora_pkt_fwd

EXPOSE 1680/udp

CMD ["./lora_pkt_fwd"]
