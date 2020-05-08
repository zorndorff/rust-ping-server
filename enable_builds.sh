# enable experimental buildx commands.
export DOCKER_CLI_EXPERIMENTAL=enabled
# enable arm64 containers on your local machine through qemo.
docker run --rm --privileged docker/binfmt:820fdd95a9972a5308930a2bdfb8573dd4447ad3
# create builder
docker buildx create --name arm-builder


