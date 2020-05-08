
DOCKER_CLI_EXPERIMENTAL=enabled docker buildx build --platform linux/arm,linux/arm64,linux/amd64 -t us.gcr.io/orndorff-ops/rust-ping-server . --push
