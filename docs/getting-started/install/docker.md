# Docker Installation Notes

Pull the dokku/dokku image:

```shell
docker pull dokku/dokku:0.35.17
```

Next, run the image.

```shell
docker container run -d \
  --env DOKKU_HOSTNAME=dokku.me \
  --env DOKKU_HOST_ROOT=/var/lib/dokku/home/dokku \
  --env DOKKU_LIB_HOST_ROOT=/var/lib/dokku/var/lib/dokku \
  --name dokku \
  --publish 3022:22 \
  --publish 8080:80 \
  --publish 8443:443 \
  --volume /var/lib/dokku:/mnt/dokku \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  dokku/dokku:0.35.17
```

Alternatively, you can use `docker-compose.yml`:

```yaml
services:
  dokku:
    image: dokku/dokku:0.35.17
    container_name: dokku
    network_mode: bridge
    ports:
      - "3022:22"
      - "8080:80"
      - "8443:443"
    volumes:
      - "/var/lib/dokku:/mnt/dokku"
      - "/var/run/docker.sock:/var/run/docker.sock"
    environment:
      DOKKU_HOSTNAME: dokku.me
      DOKKU_HOST_ROOT: /var/lib/dokku/home/dokku
      DOKKU_LIB_HOST_ROOT: /var/lib/dokku/var/lib/dokku
    restart: unless-stopped
```

The above command will start a new docker container that is ready when a message similar to `Runit started as PID 12345` appears.

Dokku is run in the following configuration:

- The global hostname is set to `dokku.me` on boot.
- The container name is dokku.
- Container SSH port 22 is exposed on the host as 3022.
- Container HTTP port 80 is exposed on the host as 8080.
- Container HTTPS port 443 is exposed on the host as 8443.
- Data within the container is stored on the host within the `/var/lib/dokku` directory.
- Image build cache is set to the data dir + `/home/dokku`.
- The docker socket is mounted into container.

Application repositories, plugin config, as well as plugin data are persisted to disk within the specified host directory for `/var/lib/dokku`.

Other docker container options can also be used when running Dokku, though the specific outcome will depend upon the specified options. For example, the Dokku container's nginx port can be bound to a specific host ip by specifying `--publish $HOST_IP:8080:80`, where `$HOST_IP` is the IP desired. Please see the [docker container run documentation](https://docs.docker.com/engine/reference/commandline/run/) for further explanation for various docker arguments.

## Plugin Installation

### On Dokku start

To install custom plugins, create a `plugin-list` file in the host's `/var/lib/dokku` directory. The plugins listed herein will be automatically installed by Dokku on container boot. This file should be the following format:

```yaml
plugin_name: repository_url
```

An example for installing the postgres and redis plugins follows:

```yaml
postgres: https://github.com/dokku/dokku-postgres.git
redis: https://github.com/dokku/dokku-redis.git
```

### Prior to Dokku start

The alternative is to build a custom docker image via a custom Dockerfile. This Dockerfile can run any `plugin:install` command. Note that the version installed at that time will be the one that persists. Below is an example Dockerfile showing this method.

```Dockerfile
FROM dokku/dokku:0.35.17
RUN dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
RUN dokku plugin:install https://github.com/dokku/dokku-redis.git redis
```

## SSH Key Management

To initialize ssh-keys within the container, use `docker exec` to enter the container:

```shell
docker exec -it dokku bash
```

Next, run the appropriate ssh-keys commands:

```shell
echo "$CONTENTS_OF_YOUR_PUBLIC_SSH_KEY_HERE" | dokku ssh-keys:add KEY_NAME
```

Please see the [user management documentation](/docs/deployment/user-management.md) for more information.

## Pushing Applications

When exposing the Dokku container's SSH port (22) on 3022, something similar to the following will need to be setup within the user's `~/.ssh/config`:

```
Host dokku.docker
  HostName 127.0.0.1
  Port 3022
```

In the above example, the hostname `127.0.0.1` is being aliased to `dokku.docker`, while the port is being overridden to `3022`. All SSH commands - including git pushes - for the hostname `dokku.docker` will be transparently sent to `127.0.0.1:3022`.
