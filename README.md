# lavr/docker-node-build

>  Build node application on CI without pain


## Available Images

This image uses the [official Node.js image][docker_hub_node--url] on the [Docker Hub][docker_hub--url] as it's base, 
following their tag convention.  Below is a list of currently available tags:

| Tags | Environment |
|------|-------------|
| [latest][dockerfile-latest] | Node.js latest on Debian Jessie |
| [8][dockerfile-8] | Node.js 7 latest on Debian Jessie |
| [7][dockerfile-7] | Node.js 7 latest on Debian Jessie |
| [wheezy][dockerfile-wheezy] | Node.js latest on Debian Wheezy |
| [slim][dockerfile-slim] | Node.js latest on Debian Jessie |
| [7-wheezy][dockerfile-7-wheezy] | Node.js 7 latest on Debian Wheezy |
| [7-slim][dockerfile-7-slim] | Node.js 7 latest on Debian Jessie |


## Installing the Image

Install latest:

```sh
$ docker pull lavr/node-build
```

## Running the Image

### Example: Build with any user 

An example of installing project npm dependencies.

_Note: Assumes that `project.json` exists at source root._

```sh
$ docker run \
  --rm \
  -i \
  -t \
  -v /path/to/source:/app \
  -u `id -u` \
  lavr/node-build \
  npm install --no-bin-links
```

[nodejs--url]: https://github.com/nodejs/node
[docker_hub--url]: hub.docker.com
[docker_hub_node--url]: https://hub.docker.com/_/node/
[dockerfile-latest]: https://github.com/lavr/docker-node-build/blob/master/latest/Dockerfile
[dockerfile-7]: https://github.com/lavr/docker-node-build/blob/master/8/Dockerfile
[dockerfile-7]: https://github.com/lavr/docker-node-build/blob/master/7/Dockerfile
[dockerfile-wheezy]: https://github.com/lavr/docker-node-build/blob/master/wheezy/Dockerfile
[dockerfile-slim]: https://github.com/lavr/docker-node-build/blob/master/slim/Dockerfile
[dockerfile-7-wheezy]: https://github.com/lavr/docker-node-build/blob/master/7/wheezy/Dockerfile
[dockerfile-7-slim]: https://github.com/lavr/docker-node-build/blob/master/7/slim/Dockerfile
