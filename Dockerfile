ARG CUDA_VERSION=12.4.1
ARG IMAGE_DISTRO=ubuntu22.04

FROM nvidia/cuda:${CUDA_VERSION}-devel-${IMAGE_DISTRO} AS builder

WORKDIR /build

COPY . /build/

RUN make

FROM nvidia/cuda:${CUDA_VERSION}-runtime-${IMAGE_DISTRO}

RUN useradd -m -d /home/ubuntu ubuntu

COPY --from=builder /build/gpu_burn /app/
COPY --from=builder /build/compare.ptx /app/

RUN chown -R ubuntu:ubuntu /app

USER ubuntu

WORKDIR /app

CMD ["./gpu_burn", "60"]
