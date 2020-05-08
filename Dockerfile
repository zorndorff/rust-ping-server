FROM rustlang/rust:nightly-slim as builder
WORKDIR /usr/src/ping-server
COPY . .
RUN cargo install --path .

FROM debian:buster-slim
RUN apt-get update 
COPY --from=builder /usr/local/cargo/bin/ping-server /usr/local/bin/ping-server
CMD ["ping-server"]
