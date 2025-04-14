# History

## 0.35.17

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.17/bootstrap.sh
sudo DOKKU_TAG=v0.35.17 bash bootstrap.sh
```

### Bug Fixes

- #7606: @josegonzalez fix: bump dokku version in main.bicep when bumping azure versions
- #7650: @josegonzalez fix: set the correct default ingress class for k3s clusters
- #7649: @josegonzalez fix: decrease default in-use keda resources
- #7587: @turicas Correctly name paketo chown option
- #7584: @josegonzalez Install all builder binaries in Dokku docker image
- #7580: @josegonzalez Do not set network flag when building dockerfile images
- #7575: @josegonzalez Restore the git head ref when running repo:gc
- #7574: @josegonzalez fix: do not write VHOST file if the DOKKU_ROOT directory does not exist

### New Features

- #7648: @josegonzalez feat: add ability to ship k3s container logs via vector
- #7581: @josegonzalez Allow --volume flags to be passed to pack at buildtime
- #7583: @josegonzalez Send Host header when running container checks in docker-local
- #7572: @josegonzalez Add support for setting shm-size for kubernetes deployments

### Documentation

- #7652: @josegonzalez docs: use a cid-file in the plugin example
- #7647: @closeobserve Fix some golang docblock comments
- #7586: @turicas Remove `--` from `--git-url` in plugin installation docs

### Dependencies

- #7603: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.24 to 11.0.25 in /tests/apps/java
- #7641: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.12.0 to 0.13.0 in /plugins/scheduler-docker-local
- #7639: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.36.2 to 1.37.0 in /plugins/common
- #7646: @dependabot[bot] chore(deps): bump phusion/baseimage from noble-1.0.0 to noble-1.0.2
- #7610: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.36.5 to 1.36.6 in /tests/apps/gogrpc
- #7619: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.71.0 to 1.71.1 in /tests/apps/gogrpc
- #7624: @dependabot[bot] chore(deps): bump traefik from 3.3.4 to 3.3.5 in /plugins/traefik-vhosts
- #7632: @dependabot[bot] chore(deps): bump golang from 1.24.1 to 1.24.2 in /tests/apps/go-fail-postdeploy
- #7633: @dependabot[bot] chore(deps): bump golang from 1.24.1 to 1.24.2 in /tests/apps/zombies-dockerfile-tini
- #7634: @dependabot[bot] chore(deps): bump golang from 1.24.1 to 1.24.2 in /tests/apps/go-fail-predeploy
- #7643: @dependabot[bot] chore(deps): bump python from 3.13.2-bookworm to 3.13.3-bookworm in /tests/apps/dockerfile-release
- #7635: @dependabot[bot] chore(deps): bump golang from 1.24.1 to 1.24.2 in /tests/apps/gogrpc
- #7636: @dependabot[bot] chore(deps): bump golang from 1.24.1 to 1.24.2 in /tests/apps/zombies-dockerfile-no-tini
- #7613: @dependabot[bot] chore(deps): bump pyparsing from 3.2.1 to 3.2.3 in /docs/_build
- #7625: @dependabot[bot] chore(deps): bump mkdocs-material from 9.6.8 to 9.6.11 in /docs/_build
- #7644: @dependabot[bot] chore(deps): bump python from 3.13.2-alpine to 3.13.3-alpine in /docs/_build
- #7651: @dependabot[bot] chore(deps): update markdown requirement from <3.8,>=3.2.1 to >=3.2.1,<3.9 in /docs/_build
- #7595: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 45.0.7 to 45.0.8
- #7593: @dependabot[bot] chore(deps): bump mkdocs-material from 9.6.7 to 9.6.8 in /docs/_build
- #7589: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.34.0 to 0.36.0 in /tests/apps/gogrpc
- #7588: @dependabot[bot] chore(deps): bump rack from 2.2.12 to 2.2.13 in /tests/apps/ruby
- #7570: @dependabot[bot] chore(deps): bump mvdan.cc/sh/v3 from 3.10.0 to 3.11.0 in /plugins/cron
- #7569: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.35.0 to 0.36.0 in /plugins/common
- #7568: @dependabot[bot] chore(deps): bump jinja2 from 3.1.5 to 3.1.6 in /docs/_build

### Other

- #7601: @dependabot[bot] chore(deps): bump github.com/expr-lang/expr from 1.15.8 to 1.17.0 in /plugins/scheduler-k3s
- #7602: @dependabot[bot] chore(deps): bump github.com/containerd/containerd from 1.7.20 to 1.7.27 in /plugins/scheduler-k3s
- #7637: @dependabot[bot] chore(deps): bump django from 5.0.13 to 5.0.14 in /tests/apps/dockerfile-release
- #7607: @dependabot[bot] chore(deps): bump gunicorn from 22.0.0 to 23.0.0 in /tests/apps/dockerfile-release
- #7596: @josegonzalez Drop compromisde tj-actions/changed-files from Ci
- #7582: @josegonzalez Add ability to disable vhosts for all apps
- #7576: @josegonzalez fix: properly handle NoAppsExist in network:rebuild-all and buildpacks:set
- #7571: @dependabot[bot] chore(deps): bump django from 5.0.11 to 5.0.13 in /tests/apps/dockerfile-release

## 0.35.16

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.16/bootstrap.sh
sudo DOKKU_TAG=v0.35.16 bash bootstrap.sh
```

### Bug Fixes

- #7502: @josegonzalez Ensure all report subcommands exit 0 when there is no app

### New Features

- #7545: @josegonzalez feat: delegate authorized_keys file validation to sshcommand

### Documentation

- #7547: @creature Fix display of numbered list in troubleshooting docs
- #7542: @creature Include troubleshooting details about app A being served when app B was expected due to in-app SSL redirects
- #7530: @josegonzalez Finish sentence in docker-options documentation
- #7527: @2x2xplz Add swapoff to commands when creating or updating swap space
- #7526: @ebuckthal Update vector container volume mount description

### Dependencies

- #7565: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.11.0 to 0.12.0 in /plugins/common
- #7566: @dependabot[bot] chore(deps): bump rack from 2.2.11 to 2.2.12 in /tests/apps/ruby
- #7567: @dependabot[bot] chore(deps): bump jinja2 from 3.1.5 to 3.1.6 in /tests/apps/python-flask
- #7563: @dependabot[bot] chore(deps): bump golang from 1.24.0 to 1.24.1 in /tests/apps/zombies-dockerfile-tini
- #7561: @dependabot[bot] chore(deps): bump golang from 1.24.0 to 1.24.1 in /tests/apps/gogrpc
- #7558: @dependabot[bot] chore(deps): bump golang from 1.24.0 to 1.24.1 in /tests/apps/zombies-dockerfile-no-tini
- #7562: @dependabot[bot] chore(deps): bump golang from 1.24.0 to 1.24.1 in /tests/apps/go-fail-predeploy
- #7555: @dependabot[bot] chore(deps): bump mkdocs-material from 9.6.5 to 9.6.7 in /docs/_build
- #7564: @dependabot[bot] chore(deps): bump golang from 1.24.0 to 1.24.1 in /tests/apps/go-fail-postdeploy
- #7560: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.11.0 to 0.12.0 in /plugins/scheduler-docker-local
- #7559: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.70.0 to 1.71.0 in /tests/apps/gogrpc
- #7553: @dependabot[bot] chore(deps): bump traefik from 3.3.3 to 3.3.4 in /plugins/traefik-vhosts
- #7551: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.33.0 to 0.35.0 in /plugins/common
- #7550: @dependabot[bot] chore(deps): bump github.com/go-jose/go-jose/v4 from 4.0.4 to 4.0.5 in /plugins/scheduler-k3s
- #7548: @dependabot[bot] chore(deps): bump dokku/openresty-docker-proxy from 0.9.2 to 0.9.3 in /plugins/openresty-vhosts
- #7541: @dependabot[bot] chore(deps): bump ruby from 3.4.1 to 3.4.2 in /tests/apps/dockerfile-entrypoint
- #7537: @dependabot[bot] chore(deps): bump k8s.io/kubernetes from 1.29.7 to 1.29.14 in /plugins/scheduler-k3s
- #7536: @dependabot[bot] chore(deps): bump golang from 1.23.6 to 1.24.0 in /tests/apps/zombies-dockerfile-no-tini
- #7535: @dependabot[bot] chore(deps): bump golang from 1.23.6 to 1.24.0 in /tests/apps/zombies-dockerfile-tini
- #7534: @dependabot[bot] chore(deps): bump golang from 1.23.6 to 1.24.0 in /tests/apps/go-fail-predeploy
- #7533: @dependabot[bot] chore(deps): bump golang from 1.23.6 to 1.24.0 in /tests/apps/go-fail-postdeploy
- #7532: @dependabot[bot] chore(deps): bump golang from 1.23.6 to 1.24.0 in /tests/apps/gogrpc
- #7531: @dependabot[bot] chore(deps): bump rack from 2.2.8.1 to 2.2.11 in /tests/apps/ruby
- #7525: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.32.0 to 0.33.0 in /plugins/common
- #7543: @dependabot[bot] chore(deps): bump mkdocs-material from 9.6.4 to 9.6.5 in /docs/_build
- #7512: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.10.0 to 0.11.0 in /plugins/common
- #7513: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 45.0.6 to 45.0.7
- #7514: @dependabot[bot] chore(deps): bump golang from 1.23.5 to 1.23.6 in /tests/apps/gogrpc
- #7515: @dependabot[bot] chore(deps): bump golang from 1.23.5 to 1.23.6 in /tests/apps/go-fail-predeploy
- #7516: @dependabot[bot] chore(deps): bump golang from 1.23.5 to 1.23.6 in /tests/apps/go-fail-postdeploy
- #7517: @dependabot[bot] chore(deps): bump golang from 1.23.5 to 1.23.6 in /tests/apps/zombies-dockerfile-tini
- #7518: @dependabot[bot] chore(deps): bump beautifulsoup4 from 4.13.1 to 4.13.3 in /docs/_build
- #7519: @dependabot[bot] chore(deps): bump golang from 1.23.5 to 1.23.6 in /tests/apps/zombies-dockerfile-no-tini
- #7521: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.36.4 to 1.36.5 in /tests/apps/gogrpc
- #7522: @dependabot[bot] chore(deps): bump python from 3.13.1-bookworm to 3.13.2-bookworm in /tests/apps/dockerfile-release
- #7523: @dependabot[bot] chore(deps): bump python from 3.13.1-alpine to 3.13.2-alpine in /docs/_build
- #7528: @dependabot[bot] chore(deps): bump mkdocs-material from 9.6.2 to 9.6.4 in /docs/_build
- #7510: @dependabot[bot] chore(deps): bump mkdocs-material from 9.6.1 to 9.6.2 in /docs/_build
- #7507: @dependabot[bot] chore(deps): bump traefik from 3.3.2 to 3.3.3 in /plugins/traefik-vhosts
- #7505: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.14.2 to 10.14.3 in /docs/_build
- #7506: @dependabot[bot] chore(deps): bump beautifulsoup4 from 4.12.3 to 4.13.1 in /docs/_build
- #7508: @dependabot[bot] chore(deps): bump dokku/openresty-docker-proxy from 0.9.1 to 0.9.2 in /plugins/openresty-vhosts
- #7482: @dependabot[bot] chore(deps): bump github.com/spf13/pflag from 1.0.5 to 1.0.6 in /plugins/common
- #7500: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.30.0 to 0.33.0 in /tests/apps/gogrpc
- #7501: @dependabot[bot] chore(deps): bump github.com/traefik/traefik/v2 from 2.11.14 to 2.11.15 in /plugins/scheduler-k3s
- #7497: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.49 to 9.6.1 in /docs/_build
- #7479: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.14 to 10.14.2 in /docs/_build
- #7477: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.69.4 to 1.70.0 in /tests/apps/gogrpc
- #7476: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.36.2 to 1.36.4 in /tests/apps/gogrpc
- #7469: @dependabot[bot] chore(deps): bump golang from 1.23.4 to 1.23.5 in /tests/apps/go-fail-postdeploy
- #7468: @dependabot[bot] chore(deps): bump golang from 1.23.4 to 1.23.5 in /tests/apps/go-fail-predeploy
- #7467: @dependabot[bot] chore(deps): bump golang from 1.23.4 to 1.23.5 in /tests/apps/zombies-dockerfile-no-tini
- #7465: @dependabot[bot] chore(deps): bump golang from 1.23.4 to 1.23.5 in /tests/apps/zombies-dockerfile-tini
- #7466: @dependabot[bot] chore(deps): bump golang from 1.23.4 to 1.23.5 in /tests/apps/gogrpc
- #7462: @dependabot[bot] chore(deps): bump traefik from 3.3.1 to 3.3.2 in /plugins/traefik-vhosts
- #7460: @dependabot[bot] chore(deps): bump django from 5.0.10 to 5.0.11 in /tests/apps/dockerfile-release
- #7474: @dependabot[bot] chore(deps): bump importlib-metadata from 8.5.0 to 8.6.1 in /docs/_build

### Other

- #7554: @josegonzalez fix: update test for newer git version

## 0.35.15

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.15/bootstrap.sh
sudo DOKKU_TAG=v0.35.15 bash bootstrap.sh
```

### Bug Fixes

- #7455: @turicas Add missing post-delete scripts to checks, caddy-vhosts and haproxy-vhosts

### Dependencies

- #7458: @dependabot[bot] chore(deps): bump traefik from 3.3.0 to 3.3.1 in /plugins/traefik-vhosts
- #7457: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.69.2 to 1.69.4 in /tests/apps/gogrpc

## 0.35.14

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.14/bootstrap.sh
sudo DOKKU_TAG=v0.35.14 bash bootstrap.sh
```

### Bug Fixes

- #7441: @turicas Fix Vagrantfile NFS config
- #7417: @josegonzalez Write contents to stdout before writing to a file
- #7416: @josegonzalez Add missing DOKKU_LIB_HOST_ROOT to ensure plugins work in devcontainer setup
- #7412: @josegonzalez Remove cgroups dependencies

### New Features

- #7439: @josegonzalez Allow specifying a custom app label alias when shipping logs via vector
- #7419: @josegonzalez Add the ability to set a MAILFROM value for local cron emails

### Refactors

- #7415: @josegonzalez Use the golang version of CopyFromImage when copying files in bash

### Documentation

- #7437: @turicas Fix doc generation
- #7414: @josegonzalez Remove copyright date range

### Dependencies

- #7453: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.13 to 10.14 in /docs/_build
- #7451: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.31.0 to 0.32.0 in /plugins/common
- #7449: @dependabot[bot] chore(deps): bump pygments from 2.19.0 to 2.19.1 in /docs/_build
- #7450: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.36.1 to 1.36.2 in /tests/apps/gogrpc
- #7452: @dependabot[bot] chore(deps): bump traefik from 3.2.3 to 3.3.0 in /plugins/traefik-vhosts
- #7446: @dependabot[bot] chore(deps): bump github.com/otiai10/copy from 1.14.0 to 1.14.1 in /plugins/common
- #7445: @dependabot[bot] chore(deps): bump pygments from 2.18.0 to 2.19.0 in /docs/_build
- #7444: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 45.0.5 to 45.0.6
- #7436: @dependabot[bot] chore(deps): bump pyparsing from 3.2.0 to 3.2.1 in /docs/_build
- #7433: @dependabot[bot] chore(deps): bump k8s.io/kubernetes from 1.29.1 to 1.29.7 in /plugins/scheduler-k3s
- #7429: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.36.1 to 1.36.2 in /plugins/common
- #7427: @dependabot[bot] chore(deps): bump click from 8.1.7 to 8.1.8 in /docs/_build
- #7425: @dependabot[bot] chore(deps): bump jinja2 from 3.1.4 to 3.1.5 in /tests/apps/python-flask
- #7426: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.36.0 to 1.36.1 in /tests/apps/gogrpc
- #7428: @dependabot[bot] chore(deps): bump jinja2 from 3.1.4 to 3.1.5 in /docs/_build
- #7430: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.12 to 10.13 in /docs/_build
- #7432: @dependabot[bot] chore(deps): bump ruby from 3.3.6 to 3.4.1 in /tests/apps/dockerfile-entrypoint
- #7424: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.69.0 to 1.69.2 in /tests/apps/gogrpc
- #7420: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.35.2 to 1.36.0 in /tests/apps/gogrpc
- #7421: @dependabot[bot] chore(deps): bump traefik from 3.2.2 to 3.2.3 in /plugins/traefik-vhosts
- #7418: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.48 to 9.5.49 in /docs/_build
- #7411: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.68.1 to 1.69.0 in /tests/apps/gogrpc

### Other

- #7434: @turicas Add missing checks:set to checks help
- #7422: @Tashows Fix detached tty for k3s

## 0.35.13

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.13/bootstrap.sh
sudo DOKKU_TAG=v0.35.13 bash bootstrap.sh
```

### Bug Fixes

- #7410: @josegonzalez Only raise nil responses for k8s list calls as errors
- #7403: @Tashows Properly resolve imagePullSecrets from app and deploymentID if relevant property does not exist
- #7404: @josegonzalez Correctly handle scale to zero with the Keda http addon
- #7400: @Tashows Check if tty is actually used and support proper output when it's not

### Documentation

- #7395: @josegonzalez Add documentation for all file formats dokku uses
- #7399: @nonZero Add -w 0 to base64 call in config:set docs for safe usage in ssh commands

### Tests

- #7380: @josegonzalez Run unit tests outside of docker by default

### Dependencies

- #7409: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.30.0 to 0.31.0 in /plugins/docker-options
- #7405: @dependabot[bot] chore(deps): bump timberio/vector from 0.42.0-debian to 0.43.1-debian in /plugins/logs
- #7407: @dependabot[bot] chore(deps): bump traefik from 3.2.1 to 3.2.2 in /plugins/traefik-vhosts
- #7402: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.36.0 to 1.36.1 in /plugins/common
- #7390: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.29.0 to 0.30.0 in /plugins/common
- #7397: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 45.0.4 to 45.0.5
- #7398: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.47 to 9.5.48 in /docs/_build
- #7394: @dependabot[bot] chore(deps): bump django from 5.0.9 to 5.0.10 in /tests/apps/dockerfile-release
- #7385: @dependabot[bot] chore(deps): bump golang from 1.23.3 to 1.23.4 in /tests/apps/go-fail-predeploy
- #7386: @dependabot[bot] chore(deps): bump golang from 1.23.3 to 1.23.4 in /tests/apps/zombies-dockerfile-tini
- #7387: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.68.0 to 1.68.1 in /tests/apps/gogrpc
- #7388: @dependabot[bot] chore(deps): bump python from 3.13.0-alpine to 3.13.1-alpine in /docs/_build
- #7389: @dependabot[bot] chore(deps): bump six from 1.16.0 to 1.17.0 in /docs/_build
- #7392: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.9.0 to 0.10.0 in /plugins/scheduler-docker-local
- #7393: @dependabot[bot] chore(deps): bump python from 3.13.0-bookworm to 3.13.1-bookworm in /tests/apps/dockerfile-release
- #7384: @dependabot[bot] chore(deps): bump golang from 1.23.3 to 1.23.4 in /tests/apps/gogrpc
- #7383: @dependabot[bot] chore(deps): bump golang from 1.23.3 to 1.23.4 in /tests/apps/zombies-dockerfile-no-tini
- #7382: @dependabot[bot] chore(deps): bump golang from 1.23.3 to 1.23.4 in /tests/apps/go-fail-postdeploy

## 0.35.12

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.12/bootstrap.sh
sudo DOKKU_TAG=v0.35.12 bash bootstrap.sh
```

### Bug Fixes

- #7361: @josegonzalez Allow autoscaling config to have zero min replicas

### New Features

- #7379: @josegonzalez Provide ability to customize chart values via `scheduler-k3s:set`

### Documentation

- #7365: @binchengqu Correct some documentation types

### Dependencies

- #7378: @josegonzalez Update go modules
- #7376: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.46 to 9.5.47 in /docs/_build
- #7370: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.35.1 to 1.36.0 in /plugins/common
- #7377: @dependabot[bot] chore(deps): bump github.com/traefik/traefik/v2 from 2.11.9 to 2.11.14 in /plugins/scheduler-k3s
- #7369: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.35.1 to 1.36.0 in /plugins/config
- #7371: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.45 to 9.5.46 in /docs/_build
- #7366: @dependabot[bot] chore(deps): bump traefik from 3.2.0 to 3.2.1 in /plugins/traefik-vhosts
- #7364: @dependabot[bot] chore(deps): bump github.com/cert-manager/cert-manager from 1.13.3 to 1.15.4 in /plugins/scheduler-k3s
- #7363: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.44 to 9.5.45 in /docs/_build
- #7360: @dependabot[bot] chore(deps): bump flask from 3.0.3 to 3.1.0 in /tests/apps/python-flask
- #7358: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.35.1 to 1.35.2 in /tests/apps/gogrpc
- #7359: @dependabot[bot] chore(deps): bump flask from 3.0.3 to 3.1.0 in /tests/apps/multi

## 0.35.11

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.11/bootstrap.sh
sudo DOKKU_TAG=v0.35.11 bash bootstrap.sh
```

### Bug Fixes

- #7353: @indrat Add missing export DOKKU_LIB_HOST_ROOT when running dokku in container

### New Features

- #7355: @josegonzalez Add support for http-based scaling when deploying on the k3s scheduler

### Documentation

- #7349: @josegonzalez Create .well-known/funding-manifest-urls

### Dependencies

- #7345: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.67.1 to 1.68.0 in /tests/apps/gogrpc
- #7350: @dependabot[bot] chore(deps): bump zipp from 3.20.2 to 3.21.0 in /docs/_build
- #7351: @dependabot[bot] chore(deps): bump werkzeug from 3.1.2 to 3.1.3 in /tests/apps/python-flask
- #7347: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.28.0 to 0.29.0 in /plugins/common
- #7348: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.8.0 to 0.9.0 in /plugins/common
- #7344: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 45.0.3 to 45.0.4
- #7343: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.8.0 to 0.9.0 in /plugins/scheduler-docker-local
- #7342: @dependabot[bot] chore(deps): bump packaging from 24.1 to 24.2 in /docs/_build
- #7341: @dependabot[bot] chore(deps): bump golang from 1.23.2 to 1.23.3 in /tests/apps/zombies-dockerfile-tini
- #7340: @dependabot[bot] chore(deps): bump golang from 1.23.2 to 1.23.3 in /tests/apps/gogrpc
- #7339: @dependabot[bot] chore(deps): bump golang from 1.23.2 to 1.23.3 in /tests/apps/go-fail-predeploy
- #7338: @dependabot[bot] chore(deps): bump golang from 1.23.2 to 1.23.3 in /tests/apps/zombies-dockerfile-no-tini
- #7337: @dependabot[bot] chore(deps): bump golang from 1.23.2 to 1.23.3 in /tests/apps/go-fail-postdeploy
- #7335: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.43 to 9.5.44 in /docs/_build
- #7334: @dependabot[bot] chore(deps): bump ruby from 3.3.5 to 3.3.6 in /tests/apps/dockerfile-entrypoint
- #7333: @dependabot[bot] chore(deps): bump werkzeug from 3.1.1 to 3.1.2 in /tests/apps/python-flask

### Other

- #7357: @josegonzalez Run brew cleanup before running brew doctor

## 0.35.10

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.10/bootstrap.sh
sudo DOKKU_TAG=v0.35.10 bash bootstrap.sh
```

### Bug Fixes

- #7324: @josegonzalez Correctly pull the deployment id from an app's helm values when executing dokku run under the k3s scheduler
- #7332: @josegonzalez Drop the pod name from stdout output when creating one-off containers under the k3s scheduler
- #7331: @josegonzalez Output logs for completed containers launched by the k3s scheduler
- #7330: @josegonzalez Disable stdio buffering so log coloring happens normally when fetching logs for k3s-scheduler managed apps
- #7329: @josegonzalez Correctly wait for one-off k3s pods to be ready
- #7328: @josegonzalez Execute one-off commands with DOKKU_APP_SHELL as the initial command under the k3s scheduler
- #7323: @josegonzalez Correct errors in brew doctor output when making a formula release

### Dependencies

- #7327: @dependabot[bot] chore(deps): bump watchdog from 5.0.3 to 6.0.0 in /docs/_build
- #7326: @dependabot[bot] chore(deps): bump werkzeug from 3.1.0 to 3.1.1 in /tests/apps/python-flask

## 0.35.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.9/bootstrap.sh
sudo DOKKU_TAG=v0.35.9 bash bootstrap.sh
```

### Bug Fixes

- #7321: @josegonzalez Allow nginx commands when the scheduler is set to null
- #7313: @Tashows Remove prefixing releaseName with 'dokku-' in UninstallChart and GetValues calls in  scheduler-k3s/triggers.go

### New Features

- #7322: @josegonzalez Add debugging information to brew bump-formula-pr

### Documentation

- #7312: @toanalien Fix typo in nginx documentation

### Dependencies

- #7320: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.34.2 to 1.35.1 in /plugins/common
- #7311: @dependabot[bot] chore(deps): bump traefik from 3.1.6 to 3.2.0 in /plugins/traefik-vhosts
- #7300: @dependabot[bot] chore(deps): bump github.com/fatih/color from 1.17.0 to 1.18.0 in /plugins/common
- #7319: @dependabot[bot] chore(deps): bump werkzeug from 3.0.6 to 3.1.0 in /tests/apps/python-flask
- #7317: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.42 to 9.5.43 in /docs/_build
- #7310: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.11.2 to 10.12 in /docs/_build
- #7299: @dependabot[bot] chore(deps): bump timberio/vector from 0.41.1-debian to 0.42.0-debian in /plugins/logs
- #7306: @dependabot[bot] chore(deps): bump org.apache.maven.plugins:maven-dependency-plugin from 3.8.0 to 3.8.1 in /tests/apps/java
- #7305: @dependabot[bot] chore(deps): bump werkzeug from 3.0.4 to 3.0.6 in /tests/apps/python-flask

## 0.35.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.8/bootstrap.sh
sudo DOKKU_TAG=v0.35.8 bash bootstrap.sh
```

### Bug Fixes

- #7295: @josegonzalez Respect the exit code and pass flags correctly when tailing nginx logs on k3s
- #7294: @josegonzalez Tail the correct container in the ingress-nginx pod
- #7293: @josegonzalez Strip non-numeric characters from certain ingress-nginx annotation values

### New Features

- #7296: @josegonzalez Implement nginx:show-config for k3s plugin

### Documentation

- #7297: @josegonzalez Document a required ps:restart in order to apply annotations, labels, and nginx properties

### Dependencies

- #7287: @dependabot[bot] chore(deps): bump mvdan.cc/sh/v3 from 3.9.0 to 3.10.0 in /plugins/cron
- #7288: @dependabot[bot] chore(deps): bump markupsafe from 3.0.1 to 3.0.2 in /docs/_build
- #7289: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.41 to 9.5.42 in /docs/_build

## 0.35.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.7/bootstrap.sh
sudo DOKKU_TAG=v0.35.7 bash bootstrap.sh
```

### Bug Fixes

- #7286: @josegonzalez Install netcat-traditional in 24.04 image
- #7284: @josegonzalez Use correct name for scheduler-proxy-logs trigger
- #7285: @josegonzalez Ensure builder pruning works when running under docker
- #7283: @danieldiekmeier Force `docker builder prune` to skip confirmation

## 0.35.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.6/bootstrap.sh
sudo DOKKU_TAG=v0.35.6 bash bootstrap.sh
```

### Bug Fixes

- #7279: @josegonzalez Allow exit code 2 when waiting for cloud-init to complete
- #7255: @josegonzalez Do not attempt to expose the same mapped port more than once

### New Features

- #7278: @josegonzalez Allow usage of newer nginx.conf.sigil on older versions of dokku
- #7271: @josegonzalez Add support for non-local nginx implementations
- #7269: @josegonzalez Add support for various timeout-related functions to nginx, openresty and k3s plugins

### Dependencies

- #7272: @dependabot[bot] chore(deps): bump node from 22-alpine to 23-alpine in /tests/apps/dockerfile
- #7273: @dependabot[bot] chore(deps): bump node from 22-alpine to 23-alpine in /tests/apps/dockerfile-procfile
- #7274: @dependabot[bot] chore(deps): bump node from 22-alpine to 23-alpine in /tests/apps/dockerfile-app-json-formations
- #7275: @dependabot[bot] chore(deps): bump node from 22-alpine to 23-alpine in /tests/apps/dockerfile-noexpose
- #7276: @dependabot[bot] chore(deps): bump node from 22-alpine to 23-alpine in /tests/apps/dockerfile-procfile-bad
- #7270: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.40 to 9.5.41 in /docs/_build
- #7264: @dependabot[bot] chore(deps): bump pyparsing from 3.1.4 to 3.2.0 in /docs/_build
- #7244: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.27.0 to 0.28.0 in /plugins/common
- #7260: @dependabot[bot] chore(deps): bump traefik from 3.1.5 to 3.1.6 in /plugins/traefik-vhosts
- #7259: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.39 to 9.5.40 in /docs/_build
- #7258: @dependabot[bot] chore(deps): bump markupsafe from 3.0.0 to 3.0.1 in /docs/_build
- #7254: @dependabot[bot] chore(deps): bump cookie and express in /tests/apps/checks-root
- #7246: @dependabot[bot] chore(deps): bump python from 3.12.7-alpine to 3.13.0-alpine in /docs/_build
- #7247: @dependabot[bot] chore(deps): bump python from 3.12.7-bookworm to 3.13.0-bookworm in /tests/apps/dockerfile-release
- #7248: @dependabot[bot] chore(deps): bump markupsafe from 2.1.5 to 3.0.0 in /docs/_build
- #7252: @dependabot[bot] chore(deps): bump django from 5.0.8 to 5.0.9 in /tests/apps/dockerfile-release

### Other

- #7282: @josegonzalez Skip ssh key setup when starting docker image
- #7281: @josegonzalez Set hostname to dokku.me for devcontainer
- #7280: @josegonzalez Merge changes from digitialocean's image-check script

## 0.35.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.5/bootstrap.sh
sudo DOKKU_TAG=v0.35.5 bash bootstrap.sh
```

### New Features

- #7213: @josegonzalez Release Dokku on supported versions of Debian and Raspbian

### Documentation

- #7241: @josegonzalez Clarify phase utilization in docker-options docs
- #7240: @josegonzalez Update testing docs to specify that CI is performed on Ubuntu Noble
- #7218: @josegonzalez Fix reference to arm64
- #7215: @Lewiscowles1986 Clarify x64 as amd64/arch64 in readme

### Tests

- #7212: @josegonzalez Update python version used in test apps

### Dependencies

- #7243: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.34.2 to 1.35.1 in /tests/apps/gogrpc
- #7238: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 45.0.2 to 45.0.3
- #7237: @dependabot[bot] chore(deps): bump traefik from 3.1.4 to 3.1.5 in /plugins/traefik-vhosts
- #7227: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.67.0 to 1.67.1 in /tests/apps/gogrpc
- #7231: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.11.1 to 10.11.2 in /docs/_build
- #7228: @dependabot[bot] chore(deps): bump golang from 1.23.1 to 1.23.2 in /tests/apps/go-fail-postdeploy
- #7229: @dependabot[bot] chore(deps): bump golang from 1.23.1 to 1.23.2 in /tests/apps/zombies-dockerfile-tini
- #7230: @dependabot[bot] chore(deps): bump python from 3.12.6-bookworm to 3.12.7-bookworm in /tests/apps/dockerfile-release
- #7232: @dependabot[bot] chore(deps): bump golang from 1.23.1 to 1.23.2 in /tests/apps/go-fail-predeploy
- #7233: @dependabot[bot] chore(deps): bump python from 3.12.6-alpine to 3.12.7-alpine in /docs/_build
- #7234: @dependabot[bot] chore(deps): bump golang from 1.23.1 to 1.23.2 in /tests/apps/zombies-dockerfile-no-tini
- #7235: @dependabot[bot] chore(deps): bump golang from 1.23.1 to 1.23.2 in /tests/apps/gogrpc
- #7220: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.38 to 9.5.39 in /docs/_build
- #7221: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.10.2 to 10.11.1 in /docs/_build
- #7222: @dependabot[bot] chore(deps): bump watchdog from 5.0.2 to 5.0.3 in /docs/_build

### Other

- #7245: @moenoel fix: #7035 broke traefik https router rule

## 0.35.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.4/bootstrap.sh
sudo DOKKU_TAG=v0.35.4 bash bootstrap.sh
```

### Bug Fixes

- #7209: @josegonzalez Exit non-zero if any deployment tasks fails
- #7211: @josegonzalez Always set the git rev env var when building an app via git:sync
- #7208: @josegonzalez Compute path for docker-container-healthchecker
- #7205: @Cactusbone chore: fix vagrant dokku-windows config

### Tests

- #7210: @josegonzalez Ensure pack binary is installed correctly when running tests in a devcontainer

### Dependencies

- #7206: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.37 to 9.5.38 in /docs/_build
- #7207: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.10.1 to 10.10.2 in /docs/_build
- #7203: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.36 to 9.5.37 in /docs/_build

## 0.35.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.3/bootstrap.sh
sudo DOKKU_TAG=v0.35.3 bash bootstrap.sh
```

### Bug Fixes

- #7200: @josegonzalez Automatically select a container type if none is specified
- #7199: @josegonzalez Check if nginx is running before reloading during an app deletion
- #7198: @josegonzalez Add builder-herokuish to default help output
- #7197: @josegonzalez Implement missing network:info command

### Tests

- #7201: @josegonzalez Run arm build on 22.04

### Dependencies

- #7193: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.9 to 10.10.1 in /docs/_build
- #7194: @dependabot[bot] chore(deps): bump traefik from 3.1.2 to 3.1.4 in /plugins/traefik-vhosts
- #7195: @dependabot[bot] chore(deps): bump dokku/openresty-docker-proxy from 0.9.0 to 0.9.1 in /plugins/openresty-vhosts
- #7196: @dependabot[bot] chore(deps): bump socket.io from 4.7.5 to 4.8.0 in /tests/apps/.websocket.disabled

## 0.35.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.2/bootstrap.sh
sudo DOKKU_TAG=v0.35.2 bash bootstrap.sh
```

### Bug Fixes

- #7191: @josegonzalez Revert to building Dokku on Ubunut 20.04 Focal to hotfix glibc issues

### New Features

- #7190: @josegonzalez Allow setting most nginx properties globally

## 0.35.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.1/bootstrap.sh
sudo DOKKU_TAG=v0.35.1 bash bootstrap.sh
```

### Bug Fixes

- #7188: @josegonzalez Respect GO environment variables when building to ensure CGO is disabled

### Documentation

- #7187: @josegonzalez Remove reference to old web ui

### Dependencies

- #7115: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.26.0 to 0.27.0 in /plugins/common
- #7160: @dependabot[bot] chore(deps): bump github.com/traefik/traefik/v2 from 2.10.7 to 2.11.9 in /plugins/scheduler-k3s
- #7094: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.34.1 to 1.34.2 in /plugins/common
- #7096: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.34.1 to 1.34.2 in /plugins/config
- #7109: @dependabot[bot] chore(deps): bump watchdog from 4.0.2 to 5.0.2 in /docs/_build
- #7127: @dependabot[bot] chore(deps): bump python from 3.12.5-alpine to 3.12.6-alpine in /docs/_build
- #7117: @dependabot[bot] chore(deps): bump golang from 1.23.0 to 1.23.1 in /tests/apps/go-fail-postdeploy
- #7116: @dependabot[bot] chore(deps): bump golang from 1.23.0 to 1.23.1 in /tests/apps/zombies-dockerfile-tini
- #7112: @dependabot[bot] chore(deps): bump golang from 1.23.0 to 1.23.1 in /tests/apps/zombies-dockerfile-no-tini
- #7108: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.23 to 11.0.24 in /tests/apps/java
- #7113: @dependabot[bot] chore(deps): bump golang from 1.23.0 to 1.23.1 in /tests/apps/go-fail-predeploy
- #7110: @dependabot[bot] chore(deps): bump ruby from 3.3.4 to 3.3.5 in /tests/apps/dockerfile-entrypoint
- #7114: @dependabot[bot] chore(deps): bump golang from 1.23.0 to 1.23.1 in /tests/apps/gogrpc
- #7132: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/dockerfile-procfile-bad
- #7133: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/nodejs-express-noappjson
- #7134: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/gitsubmodules
- #7135: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/nodejs-express-noprocfile
- #7136: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/dockerfile-procfile
- #7137: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/dockerfile-app-json-formations
- #7140: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/.websocket.disabled
- #7141: @dependabot[bot] chore(deps): bump express from 4.19.2 to 4.21.0 in /tests/apps/nodejs-express
- #7161: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.65.0 to 1.67.0 in /tests/apps/gogrpc
- #7153: @dependabot[bot] chore(deps): bump luizm/action-sh-checker from 0.8.0 to 0.9.0
- #7152: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 45.0.0 to 45.0.2
- #7079: @dependabot[bot] chore(deps): bump pyparsing from 3.1.2 to 3.1.4 in /docs/_build
- #7097: @dependabot[bot] chore(deps): bump mkdocs from 1.6.0 to 1.6.1 in /docs/_build
- #7142: @dependabot[bot] chore(deps): bump importlib-metadata from 8.4.0 to 8.5.0 in /docs/_build
- #7186: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.33 to 9.5.36 in /docs/_build
- #7144: @dependabot[bot] chore(deps): bump zipp from 3.20.0 to 3.20.2 in /docs/_build

## 0.35.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.35.0/bootstrap.sh
sudo DOKKU_TAG=v0.35.0 bash bootstrap.sh
```

See the [0.35.0 migration guide](/docs/appendices/0.35.0-migration-guide.md) for more information on migrating to 0.35.0.

### Bug Fixes

- #7179: @josegonzalez Remove references to version in compose files
- #7177: @josegonzalez Reference noble apt repository and not focal
- #7164: @josegonzalez Remove systemd on docker-based installations
- #7157: @Cactusbone Fix building in vagrant when jq is not available
- #7147: @Cactusbone Support older docker versions by setting ARG value with an equal sign
- #7088: @andreby Handle the case where parent PID is 0
- #7077: @bakatz Add cron dependency because it's necessary to run scheduled cron jobs

### New Features

- #7185: @josegonzalez Fix vagrant running on arm64 machines
- #7184: @josegonzalez Clear out docker builder cache once a day
- #7183: @josegonzalez Error out when the Dockerfile is missing during builder-dockerfile execution
- #7175: @josegonzalez Upgrade digitalocean image to Ubuntu Noble
- #7174: @josegonzalez Upgrade vagrant image to Ubuntu Noble
- #7173: @josegonzalez Upgrade builder docker image to Ubuntu Noble
- #7166: @josegonzalez Upgrade herokuish from 0.9.2 to 0.10.1
- #7075: @josegonzalez Upgrade herokuish builder to gliderlabs/herokuish:latest-24
- #7074: @josegonzalez Upgrade cnb builder to heroku/builder:24
- #7071: @josegonzalez Bump go version to 1.23.0
- #6853: @Reggino Support Ubuntu 24.04 LTS
- #6762: @josegonzalez Upgrade docker compose version in use

### Documentation

- #7180: @josegonzalez Reference actual properties for enabling the traefik api and dashboard
- #7178: @josegonzalez Fix link to docs site
- #7101: @strugee Fix typo in CNB documentation
- #7100: @no0dles SVG gets modified on release

### Tests

- #7176: @josegonzalez Fetch packages installed in ci from Ubuntu Noble repo
- #7172: @josegonzalez Run CI release processes on Ubuntu Noble
- #7171: @josegonzalez Run CI on Ubuntu Noble
- #7170: @josegonzalez Run CI codeql analysis on Ubuntu Noble
- #7169: @josegonzalez Run CI doc generation on Ubuntu Noble
- #7168: @josegonzalez Run CI linting on Ubuntu Noble
- #7073: @josegonzalez Drop codacy

### Dependencies

- #7148: @dependabot[bot] chore(deps): bump dokku/openresty-docker-proxy from 0.8.0 to 0.9.0 in /plugins/openresty-vhosts
- #7139: @dependabot[bot] chore(deps): bump timberio/vector from 0.39.0-debian to 0.41.1-debian in /plugins/logs
- #7060: @dependabot[bot] chore(deps): bump mvdan.cc/sh/v3 from 3.8.0 to 3.9.0 in /plugins/cron
- #7035: @dependabot[bot] chore(deps): bump traefik from 2.11.2 to 3.1.2 in /plugins/traefik-vhosts
- #7014: @dependabot[bot] chore(deps): bump timberio/vector from 0.39.0-debian to 0.40.0-debian in /plugins/logs
- #6985: @dependabot[bot] chore(deps): bump github.com/traefik/traefik/v2 from 2.10.7 to 2.11.6 in /plugins/scheduler-k3s

### Other

- #7165: @josegonzalez Upgrade Docker image to Ubuntu Noble 24.04
- #6784: @josegonzalez Remove --restart docker arguments when not running deploy-phase containers

## 0.34.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.9/bootstrap.sh
sudo DOKKU_TAG=v0.34.9 bash bootstrap.sh
```

### Documentation

- #7062: @Tashows List dokku-image-size-limit plugin

### Dependencies

- #7070: @dependabot[bot] chore(deps): bump micromatch from 4.0.5 to 4.0.8 in /tests/apps/multi
- #7064: @dependabot[bot] chore(deps): bump importlib-metadata from 8.3.0 to 8.4.0 in /docs/_build
- #7068: @dependabot[bot] chore(deps): bump werkzeug from 3.0.3 to 3.0.4 in /tests/apps/python-flask
- #7065: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.22 to 11.0.23 in /tests/apps/java
- #7066: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.5.7 to 45.0.0
- #7067: @dependabot[bot] chore(deps): bump org.apache.maven.plugins:maven-dependency-plugin from 3.7.1 to 3.8.0 in /tests/apps/java
- #7069: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.32 to 9.5.33 in /docs/_build
- #7063: @dependabot[bot] chore(deps): bump importlib-metadata from 8.2.0 to 8.3.0 in /docs/_build
- #7058: @dependabot[bot] chore(deps): update markdown requirement from <3.7,>=3.2.1 to >=3.2.1,<3.8 in /docs/_build
- #7059: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.31 to 9.5.32 in /docs/_build

## 0.34.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.8/bootstrap.sh
sudo DOKKU_TAG=v0.34.8 bash bootstrap.sh
```

### Documentation

- #7046: @bakatz Fixes incorrect documentation link for null builder
- #6983: @polettix Clarify paths used by Dokku when looking for specific files
- #7012: @DavidTheProgrammer Fix grammar under HSTS Header section in ssl documentation
- #7019: @josegonzalez Clarify to users that the migration guides should be followed for upgrades

### Tests

- #7039: @josegonzalez Correct case of pip in builder-pack test output

### Dependencies

- #7057: @josegonzalez Update golang dependencies
- #7048: @dependabot[bot] chore(deps): bump soupsieve from 2.5 to 2.6 in /docs/_build
- #7041: @dependabot[bot] chore(deps): bump zipp from 3.19.2 to 3.20.0 in /docs/_build
- #7044: @dependabot[bot] chore(deps): bump gunicorn from 22.0.0 to 23.0.0 in /tests/apps/multi
- #7042: @dependabot[bot] chore(deps): bump watchdog from 4.0.1 to 4.0.2 in /docs/_build
- #7043: @dependabot[bot] chore(deps): bump gunicorn from 22.0.0 to 23.0.0 in /tests/apps/python-flask
- #7045: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.25.0 to 0.26.0 in /plugins/common
- #7050: @dependabot[bot] chore(deps): bump golang from 1.22.6 to 1.23.0 in /tests/apps/zombies-dockerfile-tini
- #7049: @dependabot[bot] chore(deps): bump golang from 1.22.6 to 1.23.0 in /tests/apps/zombies-dockerfile-no-tini
- #7051: @dependabot[bot] chore(deps): bump golang from 1.22.6 to 1.23.0 in /tests/apps/go-fail-predeploy
- #7052: @dependabot[bot] chore(deps): bump golang from 1.22.6 to 1.23.0 in /tests/apps/gogrpc
- #7053: @dependabot[bot] chore(deps): bump golang from 1.22.6 to 1.23.0 in /tests/apps/go-fail-postdeploy
- #7022: @dependabot[bot] chore(deps): bump github.com/docker/docker from 24.0.9+incompatible to 25.0.6+incompatible in /plugins/scheduler-k3s
- #7016: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.34.0 to 1.34.1 in /plugins/config
- #7036: @dependabot[bot] chore(deps): bump django from 5.0.7 to 5.0.8 in /tests/apps/dockerfile-release
- #7025: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.7.0 to 0.8.0 in /plugins/common
- #7034: @dependabot[bot] chore(deps): bump golang from 1.22.5 to 1.22.6 in /tests/apps/gogrpc
- #7033: @dependabot[bot] chore(deps): bump golang from 1.22.5 to 1.22.6 in /tests/apps/go-fail-postdeploy
- #7030: @dependabot[bot] chore(deps): bump golang from 1.22.5 to 1.22.6 in /tests/apps/go-fail-predeploy
- #7015: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.34.0 to 1.34.1 in /plugins/common
- #7011: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.8.1 to 10.9 in /docs/_build
- #7037: @dependabot[bot] chore(deps): bump python from 3.12.4-alpine to 3.12.5-alpine in /docs/_build
- #7023: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.30 to 9.5.31 in /docs/_build
- #7032: @dependabot[bot] chore(deps): bump pyyaml from 6.0.1 to 6.0.2 in /docs/_build
- #7031: @dependabot[bot] chore(deps): bump golang from 1.22.5 to 1.22.6 in /tests/apps/zombies-dockerfile-tini
- #7021: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.5.6 to 44.5.7
- #7029: @dependabot[bot] chore(deps): bump golang from 1.22.5 to 1.22.6 in /tests/apps/zombies-dockerfile-no-tini
- #6999: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.5.5 to 44.5.6
- #7002: @dependabot[bot] chore(deps): bump github.com/gofrs/flock from 0.12.0 to 0.12.1 in /plugins/ps
- #7004: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.28 to 9.5.30 in /docs/_build
- #7006: @dependabot[bot] chore(deps): bump importlib-metadata from 8.0.0 to 8.2.0 in /docs/_build
- #7007: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.33.1 to 1.34.0 in /plugins/common
- #7008: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.33.1 to 1.34.0 in /plugins/config
- #6996: @dependabot[bot] chore(deps): bump setuptools from 68.0.0 to 70.0.0 in /tests/apps/dockerfile-release

## 0.34.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.7/bootstrap.sh
sudo DOKKU_TAG=v0.34.7 bash bootstrap.sh
```

### Bug Fixes

- #6984: @josegonzalez Correctly pass around arguments when displaying container log output

### New Features

- #6992: @josegonzalez feat: add logging when hsts nginx config is not using built-in template

### Dependencies

- #6988: @dependabot[bot] chore(deps): bump django from 5.0.6 to 5.0.7 in /tests/apps/dockerfile-release
- #6987: @dependabot[bot] chore(deps): bump ruby from 3.3.3 to 3.3.4 in /tests/apps/dockerfile-entrypoint
- #6972: @dependabot[bot] chore(deps): bump github.com/gofrs/flock from 0.9.0 to 0.12.0 in /plugins/ps
- #6898: @josegonzalez Update all dependencies in the dokku ecosystem
- #6978: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.21 to 11.0.22 in /tests/apps/java
- #6961: @dependabot[bot] chore(deps): bump github.com/gofrs/flock from 0.9.0 to 0.11.0 in /plugins/ps
- #6981: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.24.0 to 0.25.0 in /plugins/common
- #6980: @dependabot[bot] chore(deps): bump golang from 1.22.4 to 1.22.5 in /tests/apps/gogrpc
- #6979: @dependabot[bot] chore(deps): bump golang from 1.22.4 to 1.22.5 in /tests/apps/go-fail-postdeploy
- #6977: @dependabot[bot] chore(deps): bump golang from 1.22.4 to 1.22.5 in /tests/apps/zombies-dockerfile-tini
- #6976: @dependabot[bot] chore(deps): bump golang from 1.22.4 to 1.22.5 in /tests/apps/zombies-dockerfile-no-tini
- #6975: @dependabot[bot] chore(deps): bump golang from 1.22.4 to 1.22.5 in /tests/apps/go-fail-predeploy
- #6971: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.64.0 to 1.65.0 in /tests/apps/gogrpc
- #6963: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.27 to 9.5.28 in /docs/_build
- #6956: @dependabot[bot] chore(deps): bump importlib-metadata from 7.2.0 to 8.0.0 in /docs/_build
- #6951: @dependabot[bot] chore(deps): bump org.apache.maven.plugins:maven-dependency-plugin from 3.7.0 to 3.7.1 in /tests/apps/java
- #6952: @dependabot[bot] chore(deps): bump importlib-metadata from 7.2.0 to 7.2.1 in /docs/_build
- #6955: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.5.3 to 44.5.5
- #6957: @dependabot[bot] chore(deps): bump djangorestframework from 3.14.0 to 3.15.2 in /tests/apps/dockerfile-release
- #6958: @dependabot[bot] chore(deps): bump github.com/gofrs/flock from 0.8.1 to 0.9.0 in /plugins/ps

## 0.34.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.6/bootstrap.sh
sudo DOKKU_TAG=v0.34.6 bash bootstrap.sh
```

### Bug Fixes

- #6949: @josegonzalez Set permissions correctly on all files in the builder-release process

### Documentation

- #6948: @anand2312 Fix grammar in docs/getting-started/advanced-installation

### Dependencies

- #6943: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.5.2 to 44.5.3
- #6940: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.26 to 9.5.27 in /docs/_build
- #6941: @dependabot[bot] chore(deps): bump timberio/vector from 0.38.0-debian to 0.39.0-debian in /plugins/logs
- #6946: @dependabot[bot] chore(deps): bump importlib-metadata from 7.1.0 to 7.2.0 in /docs/_build

## 0.34.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.5/bootstrap.sh
sudo DOKKU_TAG=v0.34.5 bash bootstrap.sh
```

### Bug Fixes

- #6835: @erickedji Add missing local RE_IPV4 & RE_IPV6 vars in core-post-deploy

### New Features

- #6808: @Coffee2CodeNL Traefik optional custom http https entrypoints

### Documentation

- #6937: @irth docs: add `network_mode: bridge` to the docker compose example
- #6871: @chrisjsimpson Update dockerfile example in port management docs
- #6857: @josegonzalez Update link to dokku development blog
- #6821: @andrew-womeldorf Add tailscale plugin to community plugin list
- #6823: @powdahound Remove errant tab character in cron:set help text
- #6809: @alexislefebvre Update CI badge in readme

### Dependencies

- #6934: @dependabot[bot] chore(deps): bump org.apache.maven.plugins:maven-dependency-plugin from 3.6.1 to 3.7.0 in /tests/apps/java
- #6935: @dependabot[bot] chore(deps): bump braces from 3.0.2 to 3.0.3 in /tests/apps/multi
- #6938: @dependabot[bot] chore(deps): bump ruby from 3.3.2 to 3.3.3 in /tests/apps/dockerfile-entrypoint
- #6922: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.23.0 to 0.24.0 in /plugins/common
- #6929: @dependabot[bot] chore(deps): bump python from 3.12.3-alpine to 3.12.4-alpine in /docs/_build
- #6925: @dependabot[bot] chore(deps): bump zipp from 3.18.2 to 3.19.2 in /docs/_build
- #6914: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.5.1 to 44.5.2
- #6916: @dependabot[bot] chore(deps): bump ruby from 3.3.1 to 3.3.2 in /tests/apps/dockerfile-entrypoint
- #6921: @dependabot[bot] chore(deps): bump golang from 1.22.3 to 1.22.4 in /tests/apps/zombies-dockerfile-no-tini
- #6920: @dependabot[bot] chore(deps): bump golang from 1.22.3 to 1.22.4 in /tests/apps/zombies-dockerfile-tini
- #6923: @dependabot[bot] chore(deps): bump golang from 1.22.3 to 1.22.4 in /tests/apps/go-fail-postdeploy
- #6915: @dependabot[bot] chore(deps): bump lucaslorentz/caddy-docker-proxy from 2.8 to 2.9 in /plugins/caddy-vhosts
- #6924: @dependabot[bot] chore(deps): bump golang from 1.22.3 to 1.22.4 in /tests/apps/gogrpc
- #6927: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.24 to 9.5.26 in /docs/_build
- #6926: @dependabot[bot] chore(deps): bump golang from 1.22.3 to 1.22.4 in /tests/apps/go-fail-predeploy
- #6930: @dependabot[bot] chore(deps): bump packaging from 24.0 to 24.1 in /docs/_build
- #6931: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.34.1 to 1.34.2 in /tests/apps/gogrpc
- #6903: @dependabot[bot] chore(deps): bump requests from 2.31.0 to 2.32.0 in /tests/apps/lambda-python
- #6901: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.23 to 9.5.24 in /docs/_build
- #6908: @dependabot[bot] chore(deps): bump watchdog from 4.0.0 to 4.0.1 in /docs/_build
- #6909: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.4.0 to 44.5.1
- #6873: @dependabot[bot] chore(deps): bump werkzeug from 3.0.2 to 3.0.3 in /tests/apps/python-flask
- #6892: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.3.0 to 44.4.0
- #6891: @dependabot[bot] chore(deps): bump github.com/fatih/color from 1.16.0 to 1.17.0 in /plugins/common
- #6886: @dependabot[bot] chore(deps): bump golang from 1.22.2 to 1.22.3 in /tests/apps/gogrpc
- #6894: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.63.2 to 1.64.0 in /tests/apps/gogrpc
- #6888: @dependabot[bot] chore(deps): bump timberio/vector from 0.36.1-debian to 0.38.0-debian in /plugins/logs
- #6885: @dependabot[bot] chore(deps): bump golang from 1.22.2 to 1.22.3 in /tests/apps/zombies-dockerfile-tini
- #6887: @dependabot[bot] chore(deps): bump golang from 1.22.2 to 1.22.3 in /tests/apps/go-fail-postdeploy
- #6883: @dependabot[bot] chore(deps): bump golang from 1.22.2 to 1.22.3 in /tests/apps/zombies-dockerfile-no-tini
- #6879: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.34.0 to 1.34.1 in /tests/apps/gogrpc
- #6874: @dependabot[bot] chore(deps): bump jinja2 from 3.1.3 to 3.1.4 in /tests/apps/python-flask
- #6876: @dependabot[bot] chore(deps): bump pygments from 2.17.2 to 2.18.0 in /docs/_build
- #6875: @dependabot[bot] chore(deps): bump dokku/openresty-docker-proxy from 0.7.0 to 0.8.0 in /plugins/openresty-vhosts
- #6878: @dependabot[bot] chore(deps): bump jinja2 from 3.1.3 to 3.1.4 in /docs/_build
- #6880: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.22.0 to 0.23.0 in /plugins/common
- #6884: @dependabot[bot] chore(deps): bump golang from 1.22.2 to 1.22.3 in /tests/apps/go-fail-predeploy
- #6897: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.20 to 11.0.21 in /tests/apps/java
- #6896: @dependabot[bot] chore(deps): bump zipp from 3.18.1 to 3.18.2 in /docs/_build
- #6895: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.20 to 9.5.23 in /docs/_build
- #6858: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.8 to 10.8.1 in /docs/_build
- #6859: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.19 to 9.5.20 in /docs/_build
- #6860: @dependabot[bot] chore(deps): bump node from 21-alpine to 22-alpine in /tests/apps/dockerfile-procfile
- #6861: @dependabot[bot] chore(deps): bump node from 21-alpine to 22-alpine in /tests/apps/dockerfile-procfile-bad
- #6862: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.33.0 to 1.33.1 in /plugins/common
- #6863: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.33.0 to 1.33.1 in /plugins/config
- #6865: @dependabot[bot] chore(deps): bump node from 21-alpine to 22-alpine in /tests/apps/dockerfile
- #6866: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.33.0 to 1.34.0 in /tests/apps/gogrpc
- #6867: @dependabot[bot] chore(deps): bump node from 21-alpine to 22-alpine in /tests/apps/dockerfile-noexpose
- #6868: @dependabot[bot] chore(deps): bump node from 21-alpine to 22-alpine in /tests/apps/dockerfile-app-json-formations
- #6849: @dependabot[bot] chore(deps): bump mkdocs from 1.5.3 to 1.6.0 in /docs/_build
- #6852: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.18 to 9.5.19 in /docs/_build
- #6850: @dependabot[bot] chore(deps): bump ruby from 3.3.0 to 3.3.1 in /tests/apps/dockerfile-entrypoint
- #6845: @josegonzalez chore: update dependencies
- #6843: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.32.0 to 1.33.0 in /plugins/common
- #6844: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.32.0 to 1.33.0 in /plugins/config
- #6842: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.1.0 to 44.3.0
- #6841: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.7.1 to 10.8 in /docs/_build
- #6839: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.21.0 to 0.23.0 in /plugins/config
- #6837: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.21.0 to 0.23.0 in /tests/apps/gogrpc
- #6838: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.21.0 to 0.23.0 in /plugins/common
- #6840: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.21.0 to 0.23.0 in /plugins/scheduler-k3s
- #6836: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.0.1 to 44.1.0
- #6831: @dependabot[bot] chore(deps): bump gunicorn from 21.2.0 to 22.0.0 in /tests/apps/python-flask
- #6829: @dependabot[bot] chore(deps): bump gunicorn from 20.1.0 to 22.0.0 in /tests/apps/dockerfile-release
- #6830: @dependabot[bot] chore(deps): bump gunicorn from 21.2.0 to 22.0.0 in /tests/apps/multi
- #6828: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.17 to 9.5.18 in /docs/_build
- #6825: @dependabot[bot] chore(deps): bump sqlparse from 0.4.4 to 0.5.0 in /tests/apps/dockerfile-release
- #6819: @dependabot[bot] chore(deps): bump traefik from 2.11.1 to 2.11.2 in /plugins/traefik-vhosts
- #6817: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 44.0.0 to 44.0.1
- #6816: @dependabot[bot] chore(deps): bump python from 3.12.2-alpine to 3.12.3-alpine in /docs/_build
- #6818: @dependabot[bot] chore(deps): bump traefik from 2.11.0 to 2.11.1 in /plugins/traefik-vhosts
- #6810: @dependabot[bot] chore(deps): bump flask from 3.0.2 to 3.0.3 in /tests/apps/python-flask
- #6811: @dependabot[bot] chore(deps): bump flask from 3.0.2 to 3.0.3 in /tests/apps/multi
- #6812: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.63.0 to 1.63.2 in /tests/apps/gogrpc

### Other

- #6855: @kcdragon Update Health Check documentation to include `port`

## 0.34.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.4/bootstrap.sh
sudo DOKKU_TAG=v0.34.4 bash bootstrap.sh
```

### Bug Fixes

- #6801: @josegonzalez Guard against invalid proxy values due to move of port mapping to ports plugin
- #6798: @josegonzalez Implement missing scheduler-app-status trigger in k3s scheduler plugin
- #6791: @josegonzalez Correct issue where pre-deploy scripts do not have root access

### New Features

- #6800: @josegonzalez Update message for deployment tasks that execute in ephemeral containers

### Documentation

- #6799: @josegonzalez Document that a registry is required for k3s usage

### Tests

- #6802: @josegonzalez Update test for new deployment task output

### Dependencies

- #6807: @josegonzalez chore: bump go modules
- #6805: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.6.0 to 0.7.0 in /plugins/common
- #6806: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.21.0 to 0.22.0 in /plugins/common
- #6803: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.6.0 to 0.7.0 in /plugins/scheduler-docker-local
- #6804: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.6.0 to 0.7.0 in /plugins/app-json
- #6794: @dependabot[bot] chore(deps): bump golang from 1.22.1 to 1.22.2 in /tests/apps/zombies-dockerfile-tini
- #6796: @dependabot[bot] chore(deps): bump golang from 1.22.1 to 1.22.2 in /tests/apps/gogrpc
- #6793: @dependabot[bot] chore(deps): bump golang from 1.22.1 to 1.22.2 in /tests/apps/zombies-dockerfile-no-tini
- #6797: @dependabot[bot] chore(deps): bump golang from 1.22.1 to 1.22.2 in /tests/apps/go-fail-postdeploy
- #6795: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.62.1 to 1.63.0 in /tests/apps/gogrpc
- #6792: @dependabot[bot] chore(deps): bump golang from 1.22.1 to 1.22.2 in /tests/apps/go-fail-predeploy

## 0.34.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.3/bootstrap.sh
sudo DOKKU_TAG=v0.34.3 bash bootstrap.sh
```

### New Features

- #6785: @josegonzalez Update herokuish requirement to better support readonly containers

### Documentation

- #6788: @bumblefudge Fix typos in nginx documentation
- #6789: @crazehang Fix typos in documentation

### Dependencies

- #6786: @dependabot[bot] chore(deps): bump werkzeug from 3.0.1 to 3.0.2 in /tests/apps/python-flask
- #6787: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.16 to 9.5.17 in /docs/_build
- #6782: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.15 to 9.5.16 in /docs/_build

## 0.34.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.2/bootstrap.sh
sudo DOKKU_TAG=v0.34.2 bash bootstrap.sh
```

### Bug Fixes

- #6779: @josegonzalez Add --global flag to ps:set
- #6778: @josegonzalez Popd out of tmp directory after a git push-based deployment
- #6777: @josegonzalez Use correct function name in openresty:report output

### Documentation

- #6781: @josegonzalez Update builder management docs to warn that globally setting a builder will force all apps to use that builder
- #6780: @josegonzalez Clarify ssh-keys commands to run when adding ssh keys in docker-based installation

### Other

- #6776: @josegonzalez Use a long git sha in the git:report output

## 0.34.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.1/bootstrap.sh
sudo DOKKU_TAG=v0.34.1 bash bootstrap.sh
```

### Bug Fixes

- #6775: @josegonzalez Ensure files get created with the correct permissions when building with herokuish
- #6739: @AndrewKvalheim Dereference annotated git tags when deploying via git:sync
- #6743: @testwill Fix typo in app-json output

### New Features

- #6768: @josegonzalez Migrate away from transitional packages

### Documentation

- #6763: @iloveitaly Add docker-compose example to installation docs
- #6757: @josegonzalez Add documentation issue template
- #6742: @josegonzalez Remove trailing whitespace from history doc

### Dependencies

- #6772: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 43.0.1 to 44.0.0
- #6766: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.14 to 9.5.15 in /docs/_build
- #6744: @dependabot[bot] chore(deps): bump github.com/docker/docker from 24.0.7+incompatible to 24.0.9+incompatible in /plugins/scheduler-k3s
- #6754: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/dockerfile-app-json-formations
- #6745: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/nodejs-express
- #6746: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 43.0.0 to 43.0.1
- #6747: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/.websocket.disabled
- #6748: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/nodejs-express-noprocfile
- #6749: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/nodejs-express-noappjson
- #6750: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/dockerfile-procfile-bad
- #6751: @dependabot[bot] chore(deps): bump importlib-metadata from 7.0.2 to 7.1.0 in /docs/_build
- #6752: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/dockerfile-procfile
- #6753: @dependabot[bot] chore(deps): bump express from 4.18.3 to 4.19.1 in /tests/apps/gitsubmodules
- #6741: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.31.1 to 1.32.0 in /plugins/common
- #6740: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.31.1 to 1.32.0 in /plugins/config

## 0.34.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.34.0/bootstrap.sh
sudo DOKKU_TAG=v0.34.0 bash bootstrap.sh
```

See the [0.34.0 migration guide](/docs/appendices/0.34.0-migration-guide.md) for more information on migrating to 0.34.0.

### Bug Fixes

- #6724: @josegonzalez Correctly check if a repository has code or not in git plugin
- #6721: @josegonzalez Correct issue where cron properties cannot be retrieved if global
- #6720: @josegonzalez Add nginx-property binary to gitignore
- #6708: @josegonzalez Correctly handle quoted spaces over ssh
- #6707: @josegonzalez Correct issue where removing by index failed due to incorrect input validation
- #6705: @josegonzalez Ensure we cleanup the data directory on app deletion
- #6703: @josegonzalez Use copytruncate in logrotate commands

### New Features

- #6725: @josegonzalez Warn when publish ports if scaling up or zero downtime is enabled
- #6719: @josegonzalez Add a make target to copy the dokku binary over
- #6717: @josegonzalez Add ability to only build synced repo if there are changes
- #6715: @josegonzalez Add disk utilization to report output
- #6704: @josegonzalez Switch the default k3s routing layer from traefik to nginx

### Removals

- #6700: @josegonzalez Remove priority property from traefik plugin

### Refactors

- #6714: @josegonzalez Use CallPlugnTrigger instead of PlugnTriggerSetup
- #6713: @josegonzalez Use CallPlugnTrigger instead of PlugnTrigger
- #6712: @josegonzalez Use CallPlugnTrigger instead of PlugnTriggerOutput
- #6711: @josegonzalez Use CallPlugnTrigger instead of PlugnTriggerOutputAsString
- #6681: @josegonzalez Migrate to single ingress per app/domain combination when using nginx for k3s proxying
- #6156: @josegonzalez Migrate the app deploy lock to the data directory

### Documentation

- #6738: @josegonzalez Update migration guide for 0.34.x
- #6731: @strugee Clarify alternate proxy support status

### Dependencies

- #6736: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.13 to 9.5.14 in /docs/_build
- #6729: @dependabot[bot] chore(deps): update markdown requirement from <3.6,>=3.2.1 to >=3.2.1,<3.7 in /docs/_build
- #6728: @dependabot[bot] chore(deps): bump zipp from 3.17.0 to 3.18.1 in /docs/_build
- #6727: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.1.0 to 43.0.0
- #6723: @dependabot[bot] chore(deps): bump zipp from 3.17.0 to 3.18.0 in /docs/_build
- #6722: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.1.0 to 43.0.0
- #6710: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.32.0 to 1.33.0 in /plugins/scheduler-k3s
- #6709: @dependabot[bot] chore(deps): bump zipp from 3.17.0 to 3.18.0 in /docs/_build

### Other

- #6718: @josegonzalez Write current process id to all acquired lock files
- #6706: @josegonzalez Remove git:unlock command
- #6650: @bastianh Do not expose all containers via traefik by default
- #6632: @josegonzalez Simplify file ownership in the container by setting the process ownership during the build process
- #6630: @josegonzalez Remove unused code for copying cache directories

## 0.33.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.9/bootstrap.sh
sudo DOKKU_TAG=v0.33.9 bash bootstrap.sh
```

### Bug Fixes

- #6695: @josegonzalez Do not attempt to install both k3s and traefik
- #6687: @josegonzalez Correct issue where ClusterTriggerAuthentication objects were filtered based on prefix
- #6686: @josegonzalez Validate input for the autoscaling-auth:set command
- #6678: @josegonzalez Handle case where most builders didn't detect amd64 images on arm64
- #6677: @josegonzalez Handle case where keda isn't installed properly
- #6676: @josegonzalez Drop extra logging call from app-json plugin
- #6674: @josegonzalez Remove systemd reverse dependency by dropping software-properties-common

### New Features

- #6698: @josegonzalez Upgrade ingress-nginx
- #6588: @taraszka Add extra tags to every image dokku push when push-extra-tags are set
- #6680: @josegonzalez Wait until helm charts are installed before marking a deploy as failed or completed

### Documentation

- #6699: @josegonzalez Add a placeholder migration guide for 0.33.0
- #6682: @josegonzalez Fix reference to formation key in autoscaling example

### Tests

- #6696: @josegonzalez Run k3s tests with a specified server ip
- #6679: @josegonzalez Split out k3s tests to speed up ci

### Dependencies

- #6697: @dependabot[bot] chore(deps): bump timberio/vector from 0.36.0-debian to 0.36.1-debian in /plugins/logs
- #6685: @dependabot[bot] chore(deps): bump github.com/go-jose/go-jose/v3 from 3.0.1 to 3.0.3 in /plugins/scheduler-k3s
- #6692: @dependabot[bot] chore(deps): bump packaging from 23.2 to 24.0 in /docs/_build
- #6693: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.0.7 to 42.1.0
- #6689: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.0.6 to 42.0.7
- #6683: @dependabot[bot] chore(deps): bump importlib-metadata from 7.0.1 to 7.0.2 in /docs/_build
- #6684: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.0.5 to 42.0.6

## 0.33.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.8/bootstrap.sh
sudo DOKKU_TAG=v0.33.8 bash bootstrap.sh
```

### Bug Fixes

- #6675: @josegonzalez Remove the need for executing crontab as root
- #6660: @josegonzalez Handle case where systemctl isn't in /usr/bin
- #6659: @josegonzalez Add missing cron:set command
- #6658: @josegonzalez Execute go get/build with mod in readonly mode
- #6642: @josegonzalez Use correct annotations key for the ingress chart
- #6631: @josegonzalez Correctly use cache volume for herokuish builds
- #6629: @josegonzalez Use smaller reference to image pull secrets in secret naming
- #6628: @josegonzalez Ensure non-web processes do not attempt to perform web logic in k3s templates
- #6623: @josegonzalez Do not allow reusing the same scheme:host-port mappings when setting ports
- #6624: @taraszka Install jq in vagrant vm
- #6614: @josegonzalez Correct issue where --force-tty was not properly supported by run:detached calls

### New Features

- #6673: @josegonzalez Add image version as label to built images
- #6640: @josegonzalez Add initial support for injecting keda addons
- #6662: @josegonzalez Allow limiting letsencrypt to certain domains when using openresty as a proxy
- #6643: @josegonzalez Add ability to add extra labels
- #6639: @josegonzalez Add support for setting underscores-in-headers for nginx, openresty, and k3s
- #6634: @josegonzalez feat: install keda addon in k3s cluster
- #6616: @josegonzalez Ensure referenced images get updated by dependabot
- #6613: @josegonzalez Add a helper binary to deploy a test app for local development

### Refactors

- #6644: @josegonzalez Only apply the cluster issuers helm chart when setting letsencrypt properties
- #6641: @josegonzalez Rename image pull secrets to standardize on secret naming pattern
- #6626: @josegonzalez Copy code into initial base image via docker build

### Documentation

- #6656: @holamendi Fix typo in builder management docs
- #6652: @Calyhre Added dokku-mdns to list of community plugins
- #6649: @undercontr Added detach flag to Docker installation documentation

### Dependencies

- #6671: @josegonzalez Update dokku dependencies
- #6672: @dependabot[bot] chore(deps): bump golang from 1.22.0 to 1.22.1 in /tests/apps/go-fail-predeploy
- #6670: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.62.0 to 1.62.1 in /tests/apps/gogrpc
- #6669: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.32.0 to 1.33.0 in /tests/apps/gogrpc
- #6668: @dependabot[bot] chore(deps): bump golang from 1.22.0 to 1.22.1 in /tests/apps/zombies-dockerfile-tini
- #6667: @dependabot[bot] chore(deps): bump golang from 1.22.0 to 1.22.1 in /tests/apps/gogrpc
- #6664: @dependabot[bot] chore(deps): bump golang from 1.22.0 to 1.22.1 in /tests/apps/go-fail-postdeploy
- #6666: @dependabot[bot] chore(deps): bump pyparsing from 3.1.1 to 3.1.2 in /docs/_build
- #6665: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.12 to 9.5.13 in /docs/_build
- #6663: @dependabot[bot] chore(deps): bump golang from 1.22.0 to 1.22.1 in /tests/apps/zombies-dockerfile-no-tini
- #6661: @josegonzalez Bump go modules
- #6654: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.7 to 10.7.1 in /docs/_build
- #6653: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.20.0 to 0.21.0 in /plugins/common
- #6651: @dependabot[bot] chore(deps): bump python-dateutil from 2.9.0 to 2.9.0.post0 in /docs/_build
- #6648: @dependabot[bot] chore(deps): bump python-dateutil from 2.8.2 to 2.9.0 in /docs/_build
- #6645: @dependabot[bot] chore(deps): bump rack from 2.2.8 to 2.2.8.1 in /tests/apps/ruby
- #6646: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.11 to 9.5.12 in /docs/_build
- #6638: @josegonzalez chore: bump go modules
- #6635: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.0.4 to 42.0.5
- #6636: @dependabot[bot] chore(deps): bump timberio/vector from 0.36.X-debian to 0.36.0-debian in /plugins/logs
- #6637: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.19.0 to 0.20.0 in /plugins/common
- #6619: @dependabot[bot] chore(deps): bump traefik from v2.10 to 2.11 in /plugins/traefik-vhosts
- #6622: @josegonzalez chore(deps): bump timberio/vector from 0.35.X-debian to 0.36.X-debian in /plugins/logs
- #6618: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.10 to 9.5.11 in /docs/_build
- #6621: @dependabot[bot] chore(deps): bump byjg/easy-haproxy from 4.3.0 to 4.4.0 in /plugins/haproxy-vhosts
- #6610: @dependabot[bot] chore(deps): bump helm.sh/helm/v3 from 3.14.1 to 3.14.2 in /plugins/scheduler-k3s

## 0.33.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.7/bootstrap.sh
sudo DOKKU_TAG=v0.33.7 bash bootstrap.sh
```

### Bug Fixes

- #6608: @josegonzalez Fix issue with setting k3s resource values and lower the initial default values
- #6607: @josegonzalez Call sed in unbuffered form to ensure log output is streamed to stdout
- #6600: @josegonzalez Use correct label key for worker nodes
- #6593: @josegonzalez Remove extra trailing newline to fix govet issue

### New Features

- #6595: @josegonzalez Add ability for users to specify alternative kubeconfig and kubecontext

### Refactors

- #6594: @josegonzalez Remove all calls to common.NewShellCmd
- #6592: @josegonzalez Remove all calls to common.NewShellCmdWithArgs
- #6591: @josegonzalez Always capture stdout/stderr when executing subprocesses
- #6590: @josegonzalez Remove all direct usage of go-sh outside of plugin trigger setup

### Dependencies

- #6609: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.61.1 to 1.62.0 in /tests/apps/gogrpc
- #6604: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.9 to 9.5.10 in /docs/_build
- #6603: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.0.2 to 42.0.4
- #6601: @dependabot[bot] chore(deps): bump helm.sh/helm/v3 from 3.13.3 to 3.14.1 in /plugins/scheduler-k3s
- #6596: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.61.0 to 1.61.1 in /tests/apps/gogrpc

## 0.33.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.6/bootstrap.sh
sudo DOKKU_TAG=v0.33.6 bash bootstrap.sh
```

### Bug Fixes

- #6589: @josegonzalez Use image pull secrets instead of registries.yaml to reference private repositories when deploying via k3s
- #6581: @josegonzalez Fix issues in tls handling when deploying via k3s
- #6582: @josegonzalez Correctly handle extra whitespace in scale file contents
- #6390: @renweibo Prefer systemctl over sv when both exist while restarting nginx
- #6579: @josegonzalez Ensure k3s can be installed with taints

### New Features

- #6585: @josegonzalez Add more context to errors in fetching cron entries
- #6583: @josegonzalez Add WithContext functions for all subprocess-related code

### Refactors

- #6584: @josegonzalez Use new CallExecCommand when checking to see how help is being called

### Dependencies

- #6586: @dependabot[bot] chore(deps): bump mvdan.cc/sh/v3 from 3.7.0 to 3.8.0 in /plugins/cron
- #6587: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.8 to 9.5.9 in /docs/_build
- #6381: @dependabot[bot] chore(deps): bump actions/upload-artifact from 3 to 4
- #6578: @josegonzalez Bump go modules

### Other

- #6576: @Tashows Allow creating a detached container with TTY enabled for attaching remote terminal

## 0.33.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.5/bootstrap.sh
sudo DOKKU_TAG=v0.33.5 bash bootstrap.sh
```

### Bug Fixes

- #6574: @josegonzalez Correct indentation when configuring https on a k3s app

### Documentation

- #6575: @josegonzalez Remove reference to web ui from digitalocean install documentation

### Dependencies

- #6573: @dependabot[bot] chore(deps): bump golang from 1.21.6 to 1.22.0 in /tests/apps/go-fail-postdeploy
- #6569: @dependabot[bot] chore(deps): bump golang from 1.21.6 to 1.22.0 in /tests/apps/go-fail-predeploy
- #6570: @dependabot[bot] chore(deps): bump golang.org/x/crypto from 0.18.0 to 0.19.0 in /plugins/common
- #6571: @dependabot[bot] chore(deps): bump golang from 1.21.6 to 1.22.0 in /tests/apps/zombies-dockerfile-tini
- #6572: @dependabot[bot] chore(deps): bump python from 3.12.1-alpine to 3.12.2-alpine in /docs/_build

## 0.33.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.4/bootstrap.sh
sudo DOKKU_TAG=v0.33.4 bash bootstrap.sh
```

### Bug Fixes

- #6564: @josegonzalez Ignore link and volume flags for nixpacks builds
- #6563: @josegonzalez Wait until initial k3s node is ready before installing manifests
- #6561: @josegonzalez Index the process map to ensure the correct config is pulled
- #6560: @josegonzalez Skip app stop/delete when k3s is not installed
- #6559: @josegonzalez Check errors when writing properties
- #6556: @josegonzalez Respect the release namespace when creating resources for a k3s deploy

### New Features

- #6562: @josegonzalez Add support for specifying annotations on kubernetes resources
- #6555: @josegonzalez Add support for app-specific service accounts when deploying via k3s
- #6546: @josegonzalez Install kubectx and kubens helper binaries when setting up a k3s cluster

### Refactors

- #6558: @josegonzalez Use type-specific functions for writing contents to a file
- #6557: @josegonzalez Consolidate property fetching for nginx plugin into golang codebase
- #6536: @josegonzalez Manage vector container via compose

### Documentation

- #6545: @josegonzalez Migrate markdown doc rewriting into mkdocs hooks

### Tests

- #6554: @josegonzalez Fix issue where CI cannot install docker-buildx-plugin

### Dependencies

- #6568: @dependabot[bot] chore(deps): bump golang from 1.21.6 to 1.22.0 in /tests/apps/gogrpc
- #6567: @dependabot[bot] chore(deps): bump watchdog from 3.0.0 to 4.0.0 in /docs/_build
- #6566: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.7 to 9.5.8 in /docs/_build
- #6565: @dependabot[bot] chore(deps): bump golang from 1.21.6 to 1.22.0 in /tests/apps/zombies-dockerfile-no-tini
- #6551: @dependabot[bot] chore(deps): bump flask from 3.0.1 to 3.0.2 in /tests/apps/multi
- #6552: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.6 to 9.5.7 in /docs/_build
- #6553: @dependabot[bot] chore(deps): bump markupsafe from 2.1.4 to 2.1.5 in /docs/_build
- #6550: @dependabot[bot] chore(deps): bump flask from 3.0.1 to 3.0.2 in /tests/apps/python-flask
- #6548: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.19 to 11.0.20 in /tests/apps/java

### Other

- #6547: @josegonzalez Add support for nginx as a k3s ingress implementation

## 0.33.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.3/bootstrap.sh
sudo DOKKU_TAG=v0.33.3 bash bootstrap.sh
```

### Bug Fixes

- #6542: @josegonzalez Drop -- when calling dokku run for cron-tab templating

### Documentation

- #6543: @josegonzalez Add support for badge shortcodes in documentation

## 0.33.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.2/bootstrap.sh
sudo DOKKU_TAG=v0.33.2 bash bootstrap.sh
```

### Bug Fixes

- #6535: @josegonzalez Properly fetch default vector image if none is passed
- #6533: @josegonzalez Ensure all k3s traefik middleware resources are scoped to the process
- #6524: @josegonzalez Ensure all copied files always have line endings converted to unix-style

### New Features

- #6537: @josegonzalez Add the dokku logo as the chart icon
- #6527: @josegonzalez Upgrade vector image to 0.35.x
- #6534: @josegonzalez Allow specifying an ingress class via chart value

### Documentation

- #6530: @josegonzalez Fix indentation on letsencrypt sections for k3s scheduler docs

### Tests

- #6532: @josegonzalez Correct issues in tests for vector image log property

### Dependencies

- #6540: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.5 to 9.5.6 in /docs/_build
- #6538: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.0.1 to 42.0.2
- #6528: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 42.0.0 to 42.0.1
- #6529: @dependabot[bot] chore(deps): bump google.golang.org/protobuf from 1.31.0 to 1.32.0 in /tests/apps/gogrpc

### Other

- #6526: @josegonzalez Allow setting the vector image as a global property

## 0.33.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.1/bootstrap.sh
sudo DOKKU_TAG=v0.33.1 bash bootstrap.sh
```

### Bug Fixes

- #6520: @josegonzalez Guard against missing healthcheck config
- #6519: @josegonzalez Use correct name for cluster-issuers helm chart

### Refactors

- #6521: @josegonzalez Install traefik via helm chart directly to avoid issues where traefik silently fails installation

### Dependencies

- #6523: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.4 to 9.5.5 in /docs/_build
- #6522: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.60.1 to 1.61.0 in /tests/apps/gogrpc

## 0.33.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.33.0/bootstrap.sh
sudo DOKKU_TAG=v0.33.0 bash bootstrap.sh
```

### Bug Fixes

- #6466: @josegonzalez Use correct key for migrating global scheduler configuration on upgrade
- #6450: @josegonzalez Always set -- on docker run commands internally to avoid parsing flags on specified commands
- #6447: @josegonzalez Propagate arm64 build support for development builds
- #6445: @josegonzalez Do not strip whitespace when displaying a file for debugging purposes
- #6442: @josegonzalez Ignore go.work when bumping modules
- #6427: @josegonzalez Add missing gitignore entry for app-json trigger

### New Features

- #6500: @josegonzalez Add support for custom user namespaces when creating persistent storage directories
- #6492: @josegonzalez Add support for multierror when exiting triggers
- #6491: @josegonzalez Add wrappers for exec and ssh commands
- #6489: @josegonzalez Disable flag parsing for dokku enter
- #6469: @josegonzalez Allow generating an ssh deploy key via the git plugin
- #6468: @josegonzalez Implement global support for setting proxy type
- #6467: @josegonzalez Add ability to customize the registry repo with a template
- #6464: @josegonzalez Create helper function for exposing a docker image's working directory
- #6462: @josegonzalez Ensure ps:stop has a proper cli header
- #6460: @josegonzalez Add a post-registry-login trigger
- #6459: @josegonzalez Alias common registry names to docker.io
- #6457: @josegonzalez Add the ability to specify the output format when listing ports
- #6452: @josegonzalez Add alternative implementation for calling plugin triggers
- #6446: @josegonzalez Add support for global-only environment properties
- #6443: @josegonzalez Add support for exposing healthchecks in the AppJson struct
- #6435: @josegonzalez Implement native k3s scheduler support
- #6433: @josegonzalez Add go.work.sum to gitignore
- #6432: @josegonzalez Upgrade golang to 1.21.6
- #6430: @josegonzalez Reformat devcontainer file
- #6428: @josegonzalez Add ms-azuretools.vscode-docker to devcontainer setup
- #6313: @josegonzalez Set the platform flag in order to run amd64 images on arm64 deploy targets

### Refactors

- #6448: @josegonzalez Return an int32 for scale count
- #6444: @josegonzalez Allow setting a custom mode when writing a slice to a file

### Documentation

- #6517: @josegonzalez Remove k3s tutorial from documentation
- #6516: @josegonzalez Note that the external kubernetes plugin is deprecated
- #6515: @josegonzalez Replace the kubernetes plugin with k3s in the documentation
- #6514: @josegonzalez Add notes on k3s replacement of the scheduler-kubernetes plugin
- #6461: @josegonzalez Add documentation for implementing scheduler-related commands
- #6458: @josegonzalez Add docblocks to appjson structs
- #6420: @aochagavia Fix typo in zero downtime documentation

### Tests

- #6465: @josegonzalez Update haproxy tests so they pass
- #6449: @josegonzalez Run ci on ubuntu 22.04
- #6431: @josegonzalez Add golanglint-ci testing support

### Dependencies

- #6513: @dependabot[bot] chore(deps): bump github.com/containerd/containerd from 1.7.6 to 1.7.11 in /plugins/scheduler-k3s
- #6512: @josegonzalez Update github.com/gonsi/gomega golang dependency
- #6511: @josegonzalez Update crypto and sys golang dependencies
- #6494: @dependabot[bot] chore(deps): bump markupsafe from 2.1.3 to 2.1.4 in /docs/_build
- #6482: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.3 to 9.5.4 in /docs/_build
- #6478: @dependabot[bot] chore(deps): bump golang from 1.21.5 to 1.21.6 in /tests/apps/zombies-dockerfile-tini
- #6456: @dependabot[bot] chore(deps): bump google.golang.org/grpc from 1.29.1 to 1.60.1 in /tests/apps/gogrpc
- #6454: @dependabot[bot] chore(deps): bump flask from 3.0.0 to 3.0.1 in /tests/apps/python-flask
- #6455: @dependabot[bot] chore(deps): bump flask from 3.0.0 to 3.0.1 in /tests/apps/multi
- #6453: @josegonzalez Remove ignored dependency from dependabot
- #6451: @josegonzalez Update go modules
- #6439: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.30.0 to 1.31.0 in /plugins/config
- #6438: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.30.0 to 1.31.0 in /plugins/common
- #6437: @dependabot[bot] chore(deps): bump beautifulsoup4 from 4.12.2 to 4.12.3 in /docs/_build
- #6436: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 41.1.1 to 42.0.0
- #6425: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 41.0.1 to 41.1.1
- #6424: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.3 to 9.5.4 in /docs/_build
- #6421: @josegonzalez chore: bump golang.org/x/sync from 0.5.0 to 0.6.0
- #6419: @dependabot[bot] chore(deps): bump jinja2 from 3.1.2 to 3.1.3 in /docs/_build
- #6418: @dependabot[bot] chore(deps): bump jinja2 from 3.1.2 to 3.1.3 in /tests/apps/python-flask
- #6415: @dependabot[bot] chore(deps): bump golang from 1.21.5 to 1.21.6 in /tests/apps/go-fail-postdeploy
- #6414: @dependabot[bot] chore(deps): bump golang from 1.21.5 to 1.21.6 in /tests/apps/gogrpc
- #6413: @dependabot[bot] chore(deps): bump golang from 1.21.5 to 1.21.6 in /tests/apps/go-fail-predeploy
- #6412: @dependabot[bot] chore(deps): bump golang from 1.21.5 to 1.21.6 in /tests/apps/zombies-dockerfile-no-tini
- #6411: @dependabot[bot] chore(deps): bump golang from 1.21.5 to 1.21.6 in /tests/apps/zombies-dockerfile-tini
- #6410: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.19.0 to 0.20.0 in /tests/apps/gogrpc
- #6406: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.5.0 to 0.6.0 in /plugins/scheduler-docker-local

### Other

- #6463: @josegonzalez Use exported function from appjson module instead of manually parsing
- #6429: @josegonzalez Use go.work for development purposes

## 0.32.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.32.4/bootstrap.sh
sudo DOKKU_TAG=v0.32.4 bash bootstrap.sh
```

### Bug Fixes

- #6407: @josegonzalez Upgrade ruby to fix the release process
- #6394: @josegonzalez Scope the delete of symlinked plugins in debian post-install to the plugin folders

### Refactors

- #6388: @Juneezee Replace deprecated `io/ioutil` functions

### Documentation

- #6385: @josegonzalez Fix docblock entries for properties in plugins
- #6384: @josegonzalez Cleanup some markdown in documentation
- #6365: @josegonzalez Split out archive/image deployment docs into their own file

### Tests

- #6408: @josegonzalez Add options to the release workflow
- #6359: @josegonzalez Update buildpack api for test buildpack

### Dependencies

- #6399: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.5 to 10.7 in /docs/_build
- #6398: @dependabot[bot] chore(deps): bump sinatra from 3.1.0 to 3.2.0 in /tests/apps/ruby
- #6395: @dependabot[bot] chore(deps): bump ruby from 3.2.2 to 3.3.0 in /tests/apps/dockerfile-entrypoint
- #6391: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.2 to 9.5.3 in /docs/_build
- #6392: @dependabot[bot] chore(deps): bump importlib-metadata from 7.0.0 to 7.0.1 in /docs/_build
- #6393: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 40.2.3 to 41.0.1
- #6387: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.18 to 11.0.19 in /tests/apps/java
- #6386: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 40.2.2 to 40.2.3
- #6377: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 40.2.1 to 40.2.2
- #6380: @dependabot[bot] chore(deps): bump github/codeql-action from 2 to 3
- #6379: @dependabot[bot] chore(deps): bump mkdocs-material from 9.5.1 to 9.5.2 in /docs/_build
- #6378: @dependabot[bot] chore(deps): bump python from 3.12.0-alpine to 3.12.1-alpine in /docs/_build
- #6376: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.14 to 9.5.1 in /docs/_build
- #6371: @dependabot[bot] chore(deps): bump golang from 1.21.4 to 1.21.5 in /tests/apps/gogrpc
- #6369: @dependabot[bot] chore(deps): bump golang from 1.21.4 to 1.21.5 in /tests/apps/zombies-dockerfile-tini
- #6368: @dependabot[bot] chore(deps): bump golang from 1.21.4 to 1.21.5 in /tests/apps/zombies-dockerfile-no-tini
- #6367: @dependabot[bot] chore(deps): bump importlib-metadata from 6.8.0 to 7.0.0 in /docs/_build
- #6366: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 40.2.0 to 40.2.1
- #6370: @dependabot[bot] chore(deps): bump golang from 1.21.4 to 1.21.5 in /tests/apps/go-fail-predeploy
- #6372: @dependabot[bot] chore(deps): bump golang from 1.21.4 to 1.21.5 in /tests/apps/go-fail-postdeploy
- #6373: @dependabot[bot] chore(deps): bump actions/setup-python from 4 to 5
- #6364: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.18.0 to 0.19.0 in /tests/apps/gogrpc
- #6361: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.4 to 10.5 in /docs/_build
- #6362: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.12 to 9.4.14 in /docs/_build
- #6360: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 40.1.1 to 40.2.0
- #6357: @dependabot[bot] chore(deps): bump mkdocs-material-extensions from 1.3 to 1.3.1 in /docs/_build
- #6355: @dependabot[bot] chore(deps): bump pygments from 2.16.1 to 2.17.2 in /docs/_build
- #6358: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.8 to 9.4.12 in /docs/_build
- #6348: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.3.1 to 10.4 in /docs/_build

## 0.32.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.32.3/bootstrap.sh
sudo DOKKU_TAG=v0.32.3 bash bootstrap.sh
```

### Bug Fixes

- #6345: @josegonzalez Use updated pre-build trigger for builder-herokuish

### New Features

- #6346: @josegonzalez Update all go modules and add a command to bump modules

### Documentation

- #6339: @nschlemm Fixed link to vector sink documentation
- #6314: @josegonzalez Remove reference to DOKKU_SCHEDULER environment variable in favor of scheduler:set
- #6317: @edmorley Replace deprecated builder reference in persistent-storage.md
- #6325: @josegonzalez Add documentation on openresty includes

### Dependencies

- #6343: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.17.0 to 0.18.0 in /tests/apps/gogrpc
- #6338: @dependabot[bot] chore(deps): bump golang from 1.21.3 to 1.21.4 in /tests/apps/go-fail-postdeploy
- #6337: @dependabot[bot] chore(deps): bump golang from 1.21.3 to 1.21.4 in /tests/apps/gogrpc
- #6336: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 40.0.2 to 40.1.1
- #6335: @dependabot[bot] chore(deps): bump golang from 1.21.3 to 1.21.4 in /tests/apps/go-fail-predeploy
- #6334: @dependabot[bot] chore(deps): bump golang from 1.21.3 to 1.21.4 in /tests/apps/zombies-dockerfile-tini
- #6333: @dependabot[bot] chore(deps): bump golang from 1.21.3 to 1.21.4 in /tests/apps/zombies-dockerfile-no-tini
- #6328: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.7 to 9.4.8 in /docs/_build
- #6320: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.17 to 11.0.18 in /tests/apps/java
- #6318: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.6 to 9.4.7 in /docs/_build
- #6322: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 40.0.0 to 40.0.2
- #6323: @dependabot[bot] chore(deps): bump django from 4.1.10 to 4.1.13 in /tests/apps/dockerfile-release

### Other

- #6315: @josegonzalez Correct key in dependency file to fix docker-container-healthchecker installs on local arm64 servers

## 0.32.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.32.2/bootstrap.sh
sudo DOKKU_TAG=v0.32.2 bash bootstrap.sh
```

### New Features

- #6324: @josegonzalez Update openresty image to 0.6.0

### Documentation

- #6316: @holamendi Fix docs app-exists plugin trigger description

### Dependencies

- #6307: @dependabot[bot] chore(deps): bump luizm/action-sh-checker from 0.7.0 to 0.8.0
- #6308: @dependabot[bot] chore(deps): bump werkzeug from 3.0.0 to 3.0.1 in /tests/apps/python-flask
- #6310: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.28.1 to 1.29.0 in /plugins/config
- #6311: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.2.4 to 40.0.0

## 0.32.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.32.1/bootstrap.sh
sudo DOKKU_TAG=v0.32.1 bash bootstrap.sh
```

### Bug Fixes

- #6286: @josegonzalez Remove trailing quote on openresty letsencrypt email
- #6287: @josegonzalez Recursively delete old custom openresty includes

### New Features

- #6303: @josegonzalez feat: add the ability to specify location-block includes

### Documentation

- #6288: @josegonzalez Add missing link to nixpacks builder

### Dependencies

- #6306: @dependabot[bot] chore(deps): bump org.apache.maven.plugins:maven-dependency-plugin from 3.6.0 to 3.6.1 in /tests/apps/java
- #6301: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.28.0 to 1.28.1 in /plugins/config
- #6304: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.2.3 to 39.2.4
- #6305: @dependabot[bot] chore(deps): bump actions/setup-node from 3 to 4
- #6297: @dependabot[bot] chore(deps): bump node from 20-alpine to 21-alpine in /tests/apps/dockerfile-procfile
- #6292: @dependabot[bot] chore(deps): bump node from 20-alpine to 21-alpine in /tests/apps/dockerfile-procfile-bad
- #6293: @dependabot[bot] chore(deps): bump node from 20-alpine to 21-alpine in /tests/apps/dockerfile
- #6294: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.3 to 10.3.1 in /docs/_build
- #6295: @dependabot[bot] chore(deps): bump node from 20-alpine to 21-alpine in /tests/apps/dockerfile-app-json-formations
- #6296: @dependabot[bot] chore(deps): bump node from 20-alpine to 21-alpine in /tests/apps/dockerfile-noexpose
- #6289: @dependabot[bot] chore(deps): bump mkdocs-material-extensions from 1.2 to 1.3 in /docs/_build
- #6290: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.2.2 to 39.2.3

## 0.32.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.32.0/bootstrap.sh
sudo DOKKU_TAG=v0.32.0 bash bootstrap.sh
```

See the [0.32.0 migration guide](/docs/appendices/0.32.0-migration-guide.md) for more information on migrating to 0.32.0.

### New Features

- #6277: @josegonzalez Run ps:restore in parallel by default
- #6276: @josegonzalez Warn when incorrect interface/port in use for web processes
- #6132: @josegonzalez Add the ability to specify a custom mailto for all cron output
- #6124: @josegonzalez Add a shell function to check if a plugin trigger exists
- #5348: @josegonzalez Add nixpacks builder support

### Removals

- #6283: @josegonzalez Remove deprecated proxy-ports functions and and plugin subcommands

### Deprecations

- #6127: @josegonzalez Deprecate the builder-specific pre-release-* triggers in favor of a global pre-release-builder trigger
- #6126: @josegonzalez Deprecate the builder-specific post-build-* triggers in favor of a global post-build trigger
- #6125: @josegonzalez Deprecate the builder-specific pre-build-* triggers in favor of a global pre-build trigger

### Documentation

- #6284: @josegonzalez Document future removal of deprecated CHECKS file format
- #6123: @josegonzalez Add a migration guide for 0.32.x

### Dependencies

- #6285: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.5 to 9.4.6 in /docs/_build
- #6281: @josegonzalez Upgrade golang to 1.21

### Other

- #6155: @josegonzalez Remove ARM support

## 0.31.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.31.5/bootstrap.sh
sudo DOKKU_TAG=v0.31.5 bash bootstrap.sh
```

### Bug Fixes

- #6275: @josegonzalez Update message referencing CHECKS file usage to app.json
- #6273: @josegonzalez Clean up local build images immediately after an image is released

### New Features

- #6274: @josegonzalez Add more version output to dokku report command
- #6255: @josegonzalez Add ci concurrency to linting workflow
- #6253: @josegonzalez Add ci concurrency to doc building
- #6254: @josegonzalez Add ci concurrency to codeql analysis
- #6222: @josegonzalez Install docker-buildx-plugin to silence buildx warnings

### Refactors

- #6257: @josegonzalez Manage Dokku system dependencies in a single file

### Documentation

- #6271: @josegonzalez Update list of official, community, and deprecated plugins
- #6224: @joeyates Correct typo in example app.json for healthchecks
- #6207: @AlejandroAkbal Update port clearing command in Dockerfile deploy documentation

### Tests

- #6278: @josegonzalez Remove pack installation from builder-lambda tests

### Dependencies

- #6269: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.14.0 to 0.17.0 in /plugins/common
- #6270: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.2.1 to 39.2.2
- #6262: @dependabot[bot] chore(deps): bump golang from 1.21.2 to 1.21.3 in /tests/apps/zombies-dockerfile-no-tini
- #6263: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.16.0 to 0.17.0 in /tests/apps/gogrpc
- #6264: @dependabot[bot] chore(deps): bump golang from 1.21.2 to 1.21.3 in /tests/apps/zombies-dockerfile-tini
- #6265: @dependabot[bot] chore(deps): bump golang from 1.21.2 to 1.21.3 in /tests/apps/go-fail-predeploy
- #6259: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.16 to 11.0.17 in /tests/apps/java
- #6260: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.4 to 9.4.5 in /docs/_build
- #6261: @dependabot[bot] chore(deps): bump golang from 1.21.2 to 1.21.3 in /tests/apps/gogrpc
- #6266: @dependabot[bot] chore(deps): bump golang from 1.21.2 to 1.21.3 in /tests/apps/go-fail-postdeploy
- #6258: @dependabot[bot] chore(deps): update markdown requirement from <3.5,>=3.2.1 to >=3.2.1,<3.6 in /docs/_build
- #6256: @josegonzalez chore: bump github.com/otiai10/copy and golang.org/x/sync
- #6241: @dependabot[bot] chore(deps): bump python from 3.11.5-alpine to 3.12.0-alpine in /docs/_build
- #6252: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.2 to 9.4.4 in /docs/_build
- #6235: @dependabot[bot] chore(deps): bump packaging from 23.1 to 23.2 in /docs/_build
- #6232: @dependabot[bot] chore(deps): bump werkzeug from 2.3.7 to 3.0.0 in /tests/apps/python-flask
- #6231: @dependabot[bot] chore(deps): bump flask from 2.3.3 to 3.0.0 in /tests/apps/python-flask
- #6248: @dependabot[bot] chore(deps): bump golang from 1.21.1 to 1.21.2 in /tests/apps/gogrpc
- #6251: @dependabot[bot] chore(deps): bump golang from 1.21.1 to 1.21.2 in /tests/apps/zombies-dockerfile-tini
- #6250: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.15.0 to 0.16.0 in /tests/apps/gogrpc
- #6249: @dependabot[bot] chore(deps): bump golang from 1.21.1 to 1.21.2 in /tests/apps/go-fail-predeploy
- #6247: @dependabot[bot] chore(deps): bump golang from 1.21.1 to 1.21.2 in /tests/apps/zombies-dockerfile-no-tini
- #6246: @dependabot[bot] chore(deps): bump golang from 1.21.1 to 1.21.2 in /tests/apps/go-fail-postdeploy
- #6245: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.3.0 to 0.4.0 in /plugins/scheduler-docker-local
- #6233: @dependabot[bot] chore(deps): bump flask from 2.3.3 to 3.0.0 in /tests/apps/multi
- #6239: @dependabot[bot] chore(deps): bump github.com/otiai10/copy from 1.12.0 to 1.14.0 in /plugins/ps
- #6234: @dependabot[bot] chore(deps): bump github.com/otiai10/copy from 1.12.0 to 1.14.0 in /plugins/builder
- #6240: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.2.0 to 39.2.1
- #6228: @josegonzalez Update all go modules and ensure all are tracked in dependabot
- #6227: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.27.10 to 1.28.0 in /plugins/common
- #6216: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.1.2 to 39.2.0
- #6217: @dependabot[bot] chore(deps): bump mkdocs-material from 9.4.1 to 9.4.2 in /docs/_build
- #6215: @dependabot[bot] chore(deps): bump mkdocs-material from 9.3.1 to 9.4.1 in /docs/_build
- #6214: @dependabot[bot] chore(deps): bump mkdocs-material-extensions from 1.1.1 to 1.2 in /docs/_build
- #6209: @dependabot[bot] chore(deps): bump zipp from 3.16.2 to 3.17.0 in /docs/_build
- #6211: @dependabot[bot] chore(deps): bump mkdocs from 1.5.2 to 1.5.3 in /docs/_build
- #6213: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.0.2 to 39.1.2
- #6202: @dependabot[bot] chore(deps): bump docker/setup-buildx-action from 2 to 3
- #6199: @dependabot[bot] chore(deps): bump docker/login-action from 2 to 3
- #6200: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 39.0.0 to 39.0.2
- #6201: @dependabot[bot] chore(deps): bump docker/setup-qemu-action from 2 to 3
- #6203: @dependabot[bot] chore(deps): bump mkdocs-material from 9.2.8 to 9.3.1 in /docs/_build

## 0.31.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.31.4/bootstrap.sh
sudo DOKKU_TAG=v0.31.4 bash bootstrap.sh
```

### Documentation

- #5958: @gamedevsam Update command used to retrieve image digest when image is not pushed to a registry

### Dependencies

- #6194: @dependabot[bot] chore(deps): bump golang from 1.21.0 to 1.21.1 in /tests/apps/go-fail-predeploy
- #6197: @dependabot[bot] chore(deps): bump golang from 1.21.0 to 1.21.1 in /tests/apps/gogrpc
- #6195: @dependabot[bot] chore(deps): bump golang from 1.21.0 to 1.21.1 in /tests/apps/go-fail-postdeploy
- #6196: @dependabot[bot] chore(deps): bump golang from 1.21.0 to 1.21.1 in /tests/apps/zombies-dockerfile-tini
- #6193: @dependabot[bot] chore(deps): bump golang from 1.21.0 to 1.21.1 in /tests/apps/zombies-dockerfile-no-tini
- #6190: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.14.0 to 0.15.0 in /tests/apps/gogrpc

### Other

- #6191: @josegonzalez chore: remove debug logging from git plugin

## 0.31.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.31.3/bootstrap.sh
sudo DOKKU_TAG=v0.31.3 bash bootstrap.sh
```

### Bug Fixes

- #6179: @rct-k Fix build cache for herokuish-built apps

### Tests

- #6177: @maxvisser Update shellcheck junit integration for newer version of shellcheck

### Dependencies

- #6186: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.2.1 to 10.3 in /docs/_build
- #6184: @dependabot[bot] chore(deps): bump soupsieve from 2.4.1 to 2.5 in /docs/_build
- #6183: @dependabot[bot] chore(deps): bump actions/checkout from 3 to 4
- #6187: @dependabot[bot] chore(deps): bump mkdocs-material from 9.2.6 to 9.2.8 in /docs/_build
- #6188: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 38.2.0 to 39.0.0
- #6173: @dependabot[bot] chore(deps): bump org.eclipse.jetty:jetty-servlet from 11.0.15 to 11.0.16 in /tests/apps/java
- #6174: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 38.1.3 to 38.2.0
- #6175: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.2 to 10.2.1 in /docs/_build
- #6176: @dependabot[bot] chore(deps): bump mkdocs-material from 9.2.5 to 9.2.6 in /docs/_build
- #6171: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.1 to 10.2 in /docs/_build
- #6168: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 38.1.0 to 38.1.3
- #6170: @dependabot[bot] chore(deps): bump mkdocs-material from 9.2.3 to 9.2.5 in /docs/_build
- #6169: @dependabot[bot] chore(deps): bump python from 3.11.4-alpine to 3.11.5-alpine in /docs/_build

## 0.31.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.31.2/bootstrap.sh
sudo DOKKU_TAG=v0.31.2 bash bootstrap.sh
```

### Bug Fixes

- #6154: @josegonzalez Ensure app clones have domains setup
- #6164: @josegonzalez Use correct path for openresty letsencrypt data
- #6165: @josegonzalez Ensure we cleanup extracted files prior to next deployment
- #6166: @josegonzalez Remove unused source from openresty trigger
- #6163: @josegonzalez Add missing triggers for openresty-vhosts plugin
- #6151: @josegonzalez Do not pass an empty argument to scheduler-run when triggering cron tasks manually
- #6150: @josegonzalez Correct issue where temp file cleanup fails deploy

### Documentation

- #6167: @josegonzalez Correct svg path on homepage
- #6153: @imankulov Fix superscript typos in plugin documentation

### Tests

- #6152: @josegonzalez Use buildjet for building arm images
- #6149: @josegonzalez Fix issue where CI cannot install docker-compose-plugin

### Dependencies

- #6161: @josegonzalez Upgrade sigil to 0.10.1
- #6162: @josegonzalez Upgrade herokuish to 0.7.1
- #6160: @josegonzalez Upgrade sshcommand to 0.17.1
- #6159: @josegonzalez Upgrade procfile-util to 0.16.0
- #6158: @josegonzalez Upgrade netrc to 0.7.1
- #6157: @josegonzalez Upgrade lambda-builder to 0.5.0
- #6147: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.6.1 to 38.1.0
- #6145: @dependabot[bot] chore(deps): bump mkdocs-material from 9.2.2 to 9.2.3 in /docs/_build
- #6139: @dependabot[bot] chore(deps): bump flask from 2.3.2 to 2.3.3 in /tests/apps/multi
- #6140: @dependabot[bot] chore(deps): bump flask from 2.3.2 to 2.3.3 in /tests/apps/python-flask
- #6141: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.21 to 9.2.2 in /docs/_build

### Other

- #6148: @josegonzalez Add missing relabel command to docker-image-labeler for CNB builder

## 0.31.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.31.1/bootstrap.sh
sudo DOKKU_TAG=v0.31.1 bash bootstrap.sh
```

### Bug Fixes

- #6133: @josegonzalez Properly handle tag and branch pushes
- #6131: @josegonzalez Ensure tmp files are cleaned up when commands exit
- #6130: @josegonzalez Correct package for container healthchecker when building digitalocean image
- #6121: @josegonzalez Add missing error-log-path function to openresty plugin

### Documentation

- #6129: @josegonzalez Cleanup markdown and use Github Admonitions

### Dependencies

- #6120: @dependabot[bot] chore(deps): bump click from 8.1.6 to 8.1.7 in /docs/_build
- #6119: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.6.0 to 37.6.1
- #6118: @dependabot[bot] chore(deps): bump werkzeug from 2.3.6 to 2.3.7 in /tests/apps/python-flask
- #6115: @dependabot[bot] chore(deps): bump golang from 1.20.7 to 1.21.0 in /tests/apps/zombies-dockerfile-no-tini
- #6114: @dependabot[bot] chore(deps): bump golang from 1.20.7 to 1.21.0 in /tests/apps/zombies-dockerfile-tini
- #6104: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.13.0 to 0.14.0 in /tests/apps/gogrpc
- #6113: @dependabot[bot] chore(deps): bump golang from 1.20.7 to 1.21.0 in /tests/apps/go-fail-predeploy
- #6112: @dependabot[bot] chore(deps): bump golang from 1.20.7 to 1.21.0 in /tests/apps/go-fail-postdeploy
- #6111: @dependabot[bot] chore(deps): bump golang from 1.20.7 to 1.21.0 in /tests/apps/gogrpc
- #6107: @dependabot[bot] chore(deps): bump pygments from 2.15.1 to 2.16.1 in /docs/_build
- #6106: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.5.2 to 37.6.0
- #6105: @dependabot[bot] chore(deps): bump sinatra from 3.0.6 to 3.1.0 in /tests/apps/ruby

### Other

- #6122: @josegonzalez Plugin trigger and event cleanup

## 0.31.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.31.0/bootstrap.sh
sudo DOKKU_TAG=v0.31.0 bash bootstrap.sh
```

See the [0.31.0 migration guide](/docs/appendices/0.31.0-migration-guide.md) for more information on migrating to 0.31.0.

### Backwards Compatibility Breaks

- #6102: @josegonzalez Deprecate ARM as a build target
- #6029: @josegonzalez Provide users the ability to override auto-detected port mappings

### Bug Fixes

- #6110: @josegonzalez Correctly handle rebase when generating release notes for minor/major releases
- #6081: @josegonzalez Use correct namespace for haproxy service state tracking
- #6079: @josegonzalez Remove debugging code from builder-dockerfile plugin
- #6078: @josegonzalez Use correct quoting in format template when fetching exposed image ports
- #6070: @josegonzalez Do not write empty values for nginx container labels
- #6014: @josegonzalez Automatically clear the git source-image property when changing deployment methodologies
- #5985: @josegonzalez Mount the traefik data directory instead of the acme.json file when starting traefik
- #5979: @josegonzalez Do not start proxy implementations during server restore if they weren't manually started via the :start command
- #5973: @josegonzalez Remove all containers and images by label on app destroy

### New Features

- #6100: @josegonzalez Add support for non-web healthchecks via app.json
- #6098: @josegonzalez Upgrade traefik image from v2.8 to v2.10
- #6097: @josegonzalez Upgrade caddy image from 2.7 to 2.8
- #6082: @josegonzalez Add openresty proxy implementation
- #6057: @josegonzalez Inject docker labels when nginx proxy implementation is in use
- #6043: @josegonzalez Write auto-detected port mappings during a deploy
- #6013: @josegonzalez Export environment variables during dockerfile builds for use with value-less --build-arg flags
- #6007: @Firfi Add application/wasm to nginx.conf.sigil gzip
- #5993: @josegonzalez Un-deprecate apps and config cli aliases
- #5992: @josegonzalez Mount the vector data directory instead of the vector file
- #5991: @josegonzalez Add the ability to execute a cron task on the fly
- #5990: @josegonzalez Add json format output to cron:list command
- #5989: @josegonzalez Skip scaled processes that are missing in the Procfile
- #5978: @josegonzalez Export environment variables during dockerfile builds for use with value-less --build-arg flags
- #5908: @josegonzalez Generate jobs for crontab in parallel
- #5891: @josegonzalez Add support for specifying multiple networks on a given app

### Refactors

- #6042: @josegonzalez Rename port-map property to port
- #6021: @josegonzalez Simplify ports-configure codebase
- #6018: @josegonzalez Move code that fetches raw tcp ports for dockerfile deploys to ports plugin
- #6017: @josegonzalez Deprecate proxy-configure-ports plugin trigger in favor of ports-configure
- #6011: @josegonzalez Use ports-get plugn trigger for fetching port mappings
- #6010: @josegonzalez Use ports-clear plugn trigger to manage clearing the port map
- #5988: @josegonzalez Move crontab writing code to scheduler-docker-local plugin
- #5975: @josegonzalez Standardize on shorthand for redirecting all output to /dev/null
- #5974: @josegonzalez Standardize on ls subcommand when interacting with the docker binary

### Documentation

- #6116: @josegonzalez Remove extra newline in migration docs
- #6099: @josegonzalez Clean up references in proxy plugins
- #5987: @josegonzalez Clarify that a branch can be specified when updating a plugin

### Tests

- #6103: @josegonzalez Timeout docker image builds in CI
- #6101: @josegonzalez Make it possible to specify an alternative base domain for tests
- #6095: @josegonzalez Remove assertion for unconsumed build arguments
- #6094: @josegonzalez Correct assertion for dockerfile builds when a variable is eval'd
- #6080: @josegonzalez Add assertions to various bats tests
- #6076: @josegonzalez Use assert_output_not_exists instead of asserting output is empty string
- #6075: @josegonzalez Use an alternative curl request to ensure requests go to the local nginx
- #6074: @josegonzalez Fix issue where networks weren't being torn down during testing
- #6012: @josegonzalez Use ports:report to get the list of port mappings
- #5977: @josegonzalez Move all shellcheck disable definitions to .shellcheckrc
- #5976: @josegonzalez Remove Stickler configuration

### Other

- #6109: @josegonzalez Make heroku-22/jammy the default stack for cnb/herokuish builds
- #6096: @josegonzalez Upgrade vector image from 0.23.x to 0.31.x
- #6019: @josegonzalez Move code for fetching an available port to the ports plugin
- #6015: @josegonzalez Move CHECKS file extraction to the beginning of the deploy
- #5995: @josegonzalez Migrate the proxy port map from config variable to property system
- #5986: @josegonzalez Move all port management code to standalone ports plugin
- #5495: @josegonzalez Move herokuish app cache from the filesystem into a docker volume

## 0.30.11

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.11/bootstrap.sh
sudo DOKKU_TAG=v0.30.11 bash bootstrap.sh
```

### Dependencies

- #6091: @dependabot[bot] chore(deps): bump mkdocs from 1.5.1 to 1.5.2 in /docs/_build
- #6093: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.5.1 to 37.5.2
- #6088: @dependabot[bot] chore(deps): bump golang from 1.20.6 to 1.20.7 in /tests/apps/gogrpc
- #6087: @dependabot[bot] chore(deps): bump golang from 1.20.6 to 1.20.7 in /tests/apps/zombies-dockerfile-no-tini
- #6086: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.12.0 to 0.13.0 in /tests/apps/gogrpc
- #6085: @dependabot[bot] chore(deps): bump golang from 1.20.6 to 1.20.7 in /tests/apps/go-fail-postdeploy
- #6084: @dependabot[bot] chore(deps): bump golang from 1.20.6 to 1.20.7 in /tests/apps/go-fail-predeploy
- #6083: @dependabot[bot] chore(deps): bump golang from 1.20.6 to 1.20.7 in /tests/apps/zombies-dockerfile-tini
- #6072: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.5.0 to 37.5.1
- #6073: @dependabot[bot] chore(deps): bump pyparsing from 3.1.0 to 3.1.1 in /docs/_build

## 0.30.10

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.10/bootstrap.sh
sudo DOKKU_TAG=v0.30.10 bash bootstrap.sh
```

### Bug Fixes

- #6036: @l3x4 Remove auth middleware from traefik compose setup when basic auth is not enabled
- #6041: @josegonzalez Use updated path for devcontainer vscode extensions
- #6022: @iphoting Fix issue with docker plugin-list install failing boot for docker-based installations
- #6028: @josegonzalez Detect and use systemd on Debian systems when interacting with nginx

### Documentation

- #6068: @nickgal Fix typo in port management docs
- #6063: @PabloCastellano Fix typo in nginx docs

### Tests

- #6035: @iphoting Allow the check-commit CI job to work with PRs from other repos

### Dependencies

- #6065: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.19 to 9.1.21 in /docs/_build
- #6064: @dependabot[bot] chore(deps): bump mkdocs from 1.4.3 to 1.5.1 in /docs/_build
- #6059: @josegonzalez Update go packages to fix build issues
- #6058: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.4.0 to 37.5.0
- #6053: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.3.0 to 37.4.0
- #6049: @dependabot[bot] chore(deps): bump gunicorn from 21.1.0 to 21.2.0 in /tests/apps/multi
- #6050: @dependabot[bot] chore(deps): bump click from 8.1.5 to 8.1.6 in /docs/_build
- #6051: @dependabot[bot] chore(deps): bump gunicorn from 21.1.0 to 21.2.0 in /tests/apps/python-flask
- #6052: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.1.2 to 37.3.0
- #6048: @dependabot[bot] chore(deps): bump pyyaml from 6.0 to 6.0.1 in /docs/_build
- #6047: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.18 to 9.1.19 in /docs/_build
- #6046: @dependabot[bot] chore(deps): bump gunicorn from 20.1.0 to 21.1.0 in /tests/apps/python-flask
- #6045: @dependabot[bot] chore(deps): bump gunicorn from 20.1.0 to 21.1.0 in /tests/apps/multi
- #6044: @dependabot[bot] chore(deps): bump zipp from 3.16.1 to 3.16.2 in /docs/_build
- #6038: @dependabot[bot] chore(deps): bump pymdown-extensions from 10.0.1 to 10.1 in /docs/_build
- #6039: @dependabot[bot] chore(deps): bump click from 8.1.4 to 8.1.5 in /docs/_build
- #6040: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.1.1 to 37.1.2
- #6037: @dependabot[bot] chore(deps): bump zipp from 3.16.0 to 3.16.1 in /docs/_build
- #6034: @dependabot[bot] chore(deps): bump golang from 1.20.5 to 1.20.6 in /tests/apps/zombies-dockerfile-tini
- #6032: @dependabot[bot] chore(deps): bump golang from 1.20.5 to 1.20.6 in /tests/apps/zombies-dockerfile-no-tini
- #6033: @dependabot[bot] chore(deps): bump golang from 1.20.5 to 1.20.6 in /tests/apps/gogrpc
- #6031: @dependabot[bot] chore(deps): bump golang from 1.20.5 to 1.20.6 in /tests/apps/go-fail-postdeploy
- #6030: @dependabot[bot] chore(deps): bump golang from 1.20.5 to 1.20.6 in /tests/apps/go-fail-predeploy
- #6027: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.1.0 to 37.1.1
- #6024: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.0.5 to 37.1.0
- #6026: @dependabot[bot] chore(deps): bump importlib-metadata from 6.7.0 to 6.8.0 in /docs/_build
- #6025: @dependabot[bot] chore(deps): bump zipp from 3.15.0 to 3.16.0 in /docs/_build

### Other

- #6056: @Coffee2CodeNL Add debian bookworm to release and bootstrap script

## 0.30.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.9/bootstrap.sh
sudo DOKKU_TAG=v0.30.9 bash bootstrap.sh
```

### Bug Fixes

- #6009: @josegonzalez Properly set the plugin repository name when installing in a docker-based dokku install
- #5999: @caplod Fix http to https redirect in traefik

### Documentation

- #6006: @josegonzalez Clarify how to specify the contents of an ssh key for dokku
- #5998: @kleutzinger Fix typo in scheduled cron task documentation
- #5984: @josegonzalez Unify all Procfile-handling documentation under the process management docs
- #5982: @josegonzalez Update docs to mention that files are extracted from source where source code is available

### Dependencies

- #6008: @dependabot[bot] chore(deps): bump click from 8.1.3 to 8.1.4 in /docs/_build
- #6003: @dependabot[bot] chore(deps): bump django from 4.1.9 to 4.1.10 in /tests/apps/dockerfile-release
- #6005: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.11.0 to 0.12.0 in /tests/apps/gogrpc
- #6000: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.17 to 9.1.18 in /docs/_build

## 0.30.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.8/bootstrap.sh
sudo DOKKU_TAG=v0.30.8 bash bootstrap.sh
```

### Bug Fixes

- #5941: @josegonzalez Use github token to avoid rate limiting during packer init
- #5930: @michaelmulley Fix issue with docker plugin-list install failing boot for docker-based installations

### New Features

- #5962: @jaytula Add Debian 12 support to the bootstrap install script
- #5926: @josegonzalez Update default herokuish version to 0.6.0

### Documentation

- #5943: @josegonzalez Add a note for each network type mentioning when they are best used
- #5938: @josegonzalez Add build-base to ensure gcc is available
- #5927: @aradalvand Improve docs about `X-Forwarded-*` headers and move it to nginx.md
- #5921: @aradalvand Update dockerfiles.md to mention that BuildKit is the default builder from Docker v24 onwards
- #5923: @aradalvand Remove `:master` from `git push` commands in the documentation

### Tests

- #5972: @josegonzalez Add permissions to allow publishing test results for pull requests
- #5944: @josegonzalez Add the ability to skip ci when commit message includes a ci skip message or are docs related

### Dependencies

- #5971: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.0.4 to 37.0.5
- #5967: @dependabot[bot] chore(deps): bump socket.io from 4.6.2 to 4.7.1 in /tests/apps/.websocket.disabled
- #5968: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 37.0.3 to 37.0.4
- #5966: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.16 to 9.1.17 in /docs/_build
- #5965: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.4.1 to 37.0.3
- #5957: @josegonzalez chore: update go packages to fix build issues
- #5956: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.4.0 to 36.4.1
- #5949: @dependabot[bot] chore(deps): bump github.com/otiai10/copy from 1.11.0 to 1.12.0 in /plugins/builder
- #5951: @dependabot[bot] chore(deps): bump github.com/otiai10/copy from 1.11.0 to 1.12.0 in /plugins/ps
- #5952: @dependabot[bot] chore(deps): bump github.com/otiai10/copy from 1.11.0 to 1.12.0 in /plugins/common
- #5953: @dependabot[bot] chore(deps): bump github.com/otiai10/copy from 1.11.0 to 1.12.0 in /plugins/app-json
- #5948: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.3.0 to 36.4.0
- #5950: @dependabot[bot] chore(deps): bump importlib-metadata from 6.6.0 to 6.7.0 in /docs/_build
- #5954: @dependabot[bot] chore(deps): bump pyparsing from 3.0.9 to 3.1.0 in /docs/_build
- #5946: @josegonzalez Update to actions/checkout@v3
- #5940: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.15 to 9.1.16 in /docs/_build
- #5939: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.2.1 to 36.3.0
- #5937: @josegonzalez chore: update go packages to fix build issues
- #5934: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.2.0 to 0.3.0 in /plugins/app-json
- #5933: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.1.0 to 36.2.1
- #5935: @dependabot[bot] chore(deps): bump golang.org/x/sync from 0.2.0 to 0.3.0 in /plugins/common
- #5928: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.10.0 to 0.11.0 in /tests/apps/gogrpc
- #5922: @dependabot[bot] chore(deps): bump werkzeug from 2.3.5 to 2.3.6 in /tests/apps/python-flask
- #5919: @dependabot[bot] chore(deps): bump python from 3.11.3-buster to 3.11.4-buster in /tests/apps/dockerfile-release
- #5913: @dependabot[bot] chore(deps): bump golang from 1.20.4 to 1.20.5 in /tests/apps/go-fail-predeploy
- #5915: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.27.7 to 1.27.8 in /plugins/config
- #5916: @dependabot[bot] chore(deps): bump github.com/onsi/gomega from 1.27.7 to 1.27.8 in /plugins/common
- #5917: @dependabot[bot] chore(deps): bump werkzeug from 2.3.4 to 2.3.5 in /tests/apps/python-flask
- #5918: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.18 to 36.1.0
- #5920: @dependabot[bot] chore(deps): bump python from 3.11.3-alpine to 3.11.4-alpine in /docs/_build
- #5914: @dependabot[bot] chore(deps): bump golang from 1.20.4 to 1.20.5 in /tests/apps/zombies-dockerfile-no-tini
- #5912: @dependabot[bot] chore(deps): bump golang from 1.20.4 to 1.20.5 in /tests/apps/go-fail-postdeploy
- #5911: @dependabot[bot] chore(deps): bump golang from 1.20.4 to 1.20.5 in /tests/apps/gogrpc
- #5910: @dependabot[bot] chore(deps): bump golang from 1.20.4 to 1.20.5 in /tests/apps/zombies-dockerfile-tini
- #5909: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.17 to 36.0.18
- #5906: @dependabot[bot] chore(deps): bump markupsafe from 2.1.2 to 2.1.3 in /docs/_build
- #5907: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.15 to 36.0.17

### Other

- #5945: @josegonzalez tests: split out image building into it's own job to speed up ci
- #5942: @josegonzalez Move the times function to functions.go

## 0.30.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.7/bootstrap.sh
sudo DOKKU_TAG=v0.30.7 bash bootstrap.sh
```

### Bug Fixes

- #5905: @josegonzalez fix: trim whitespace on registry property values

### Documentation

- #5897: @josegonzalez Add cron-restart to plugin registry

### Dependencies

- #5904: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.11 to 36.0.15
- #5902: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.10 to 36.0.11
- #5900: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.9 to 36.0.10
- #5898: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.8 to 36.0.9
- #5899: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.14 to 9.1.15 in /docs/_build
- #5894: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.6 to 36.0.8

## 0.30.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.6/bootstrap.sh
sudo DOKKU_TAG=v0.30.6 bash bootstrap.sh
```

### Bug Fixes

- #5889: @josegonzalez Respect dashboard disabling properties in traefik
- #5890: @josegonzalez Add missing report triggers and omitted proxy functionality
- #5757: @josegonzalez Ensure users can push from an image-deploy repository and respect deploy-branch

### New Features

- #5873: @josegonzalez Add dependabot to all plugin dependencies

### Dependencies

- #5877: @dependabot[bot] chore(deps): bump github.com/multiformats/go-base36 from 0.1.1-0.20220823151017-f5af2eed4d9c to 0.2.0 in /plugins/cron
- #5886: @josegonzalez chore: bump github.com/otiai10/copy from 1.9.0 to 1.11.0
- #5875: @dependabot[bot] chore(deps): bump github.com/gofrs/flock from 0.8.0 to 0.8.1 in /plugins/ps
- #5885: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 36.0.3 to 36.0.6
- #5871: @dependabot[bot] chore(deps): bump tj-actions/changed-files from 35.9.2 to 36.0.3

### Other

- #5887: @josegonzalez chore: bump github.com/ryanuber/columnize from 1.1.2-0.20190319233515-9e6335e58db3 to 2.1.2+incompatible
- #5872: @Samuelodan Fix typo in upgrading docs

## 0.30.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.5/bootstrap.sh
sudo DOKKU_TAG=v0.30.5 bash bootstrap.sh
```

### New Features

- #5862: @edmorley Stop using the `latest` tag for the default `DOKKU_CNB_BUILDER`

### Documentation

- #5870: @josegonzalez Repair malformed code-block
- #5863: @joker234 Remove reference to ssh github clone from app deployment docs

### Tests

- #5867: @josegonzalez Update linuxserver image used in tests to one that is compatible with arm64

### Dependencies

- #5868: @josegonzalez Update all golang dependencies to fix go.0 tests
- #5856: @dependabot[bot] chore(deps): bump pymdown-extensions from 9.11 to 10.0.1 in /docs/_build
- #5865: @dependabot[bot] chore(deps): bump requests from 2.27.1 to 2.31.0 in /tests/apps/lambda-python
- #5864: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.12 to 9.1.14 in /docs/_build
- #5866: @dependabot[bot] chore(deps): bump maven-dependency-plugin from 3.5.0 to 3.6.0 in /tests/apps/java

## 0.30.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.4/bootstrap.sh
sudo DOKKU_TAG=v0.30.4 bash bootstrap.sh
```

### Bug Fixes

- #5786: @obrienmd Detect id_ed25519.pub in git:public-key command
- #5758: @josegonzalez Support pack-based images that do not have a Procfile

### New Features

- #5851: @josegonzalez Allow setting _ as domain name for default nginx routing

### Documentation

- #5853: @josegonzalez Always overwrite bootstrap install file
- #5828: @josegonzalez Add a note to the troubleshooting docs pointing developers to bind to all interfaces
- #5827: @josegonzalez Add permalink support to headers

### Tests

- #5850: @josegonzalez Only run packer validation if any packer-related files were changed

### Dependencies

- #5837: @dependabot[bot] chore(deps): bump golang from 1.20.3 to 1.20.4 in /tests/apps/zombies-dockerfile-tini
- #5836: @dependabot[bot] chore(deps): bump golang from 1.20.3 to 1.20.4 in /tests/apps/gogrpc
- #5832: @dependabot[bot] chore(deps): bump flask from 2.3.1 to 2.3.2 in /tests/apps/multi
- #5831: @dependabot[bot] chore(deps): bump flask from 2.3.1 to 2.3.2 in /tests/apps/python-flask
- #5839: @dependabot[bot] chore(deps): bump mkdocs from 1.4.2 to 1.4.3 in /docs/_build
- #5835: @dependabot[bot] chore(deps): bump golang from 1.20.3 to 1.20.4 in /tests/apps/zombies-dockerfile-no-tini
- #5838: @dependabot[bot] chore(deps): bump golang from 1.20.3 to 1.20.4 in /tests/apps/go-fail-predeploy
- #5841: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.9.0 to 0.10.0 in /tests/apps/gogrpc
- #5842: @dependabot[bot] chore(deps): bump werkzeug from 2.3.1 to 2.3.4 in /tests/apps/python-flask
- #5844: @dependabot[bot] chore(deps): bump django from 4.1.7 to 4.1.9 in /tests/apps/dockerfile-release
- #5848: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.8 to 9.1.12 in /docs/_build
- #5840: @dependabot[bot] chore(deps): bump golang from 1.20.3 to 1.20.4 in /tests/apps/go-fail-postdeploy
- #5823: @dependabot[bot] chore(deps): bump flask from 2.2.3 to 2.3.1 in /tests/apps/python-flask
- #5825: @dependabot[bot] chore(deps): bump flask from 2.2.3 to 2.3.1 in /tests/apps/multi
- #5826: @dependabot[bot] chore(deps): bump werkzeug from 2.2.3 to 2.3.1 in /tests/apps/python-flask

## 0.30.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.3/bootstrap.sh
sudo DOKKU_TAG=v0.30.3 bash bootstrap.sh
```

### Bug Fixes

- #5763: @josegonzalez Set dokku version correctly for digitalocean image build

### New Features

- #5799: @josegonzalez Add ability to run dokku report without downloading herokuish image

### Documentation

- #5810: @strugee Fix typo in 0.30.x migration guide
- #5820: @tylercrumpton Fix "cotainer" typo in one-off tasks docs page.
- #5800: @josegonzalez Fix indentation in registry configuration documentation

### Dependencies

- #5809: @dependabot[bot] chore(deps): bump pygments from 2.15.0 to 2.15.1 in /docs/_build
- #5811: @dependabot[bot] chore(deps): bump node from 19-alpine to 20-alpine in /tests/apps/dockerfile-noexpose
- #5812: @dependabot[bot] chore(deps): bump node from 19-alpine to 20-alpine in /tests/apps/dockerfile-procfile
- #5813: @dependabot[bot] chore(deps): bump node from 19-alpine to 20-alpine in /tests/apps/dockerfile-procfile-bad
- #5814: @dependabot[bot] chore(deps): bump node from 19-alpine to 20-alpine in /tests/apps/dockerfile
- #5815: @dependabot[bot] chore(deps): bump node from 19-alpine to 20-alpine in /tests/apps/dockerfile-app-json-formations
- #5816: @dependabot[bot] chore(deps): bump sqlparse from 0.4.3 to 0.4.4 in /tests/apps/dockerfile-release
- #5818: @dependabot[bot] chore(deps): bump importlib-metadata from 6.5.0 to 6.6.0 in /docs/_build
- #5821: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.6 to 9.1.8 in /docs/_build
- #5805: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.14 to 11.0.15 in /tests/apps/java
- #5808: @dependabot[bot] chore(deps): bump importlib-metadata from 6.3.0 to 6.5.0 in /docs/_build
- #5802: @dependabot[bot] chore(deps): bump packaging from 23.0 to 23.1 in /docs/_build
- #5806: @dependabot[bot] chore(deps): bump soupsieve from 2.4 to 2.4.1 in /docs/_build
- #5779: @dependabot[bot] chore(deps): bump golang from 1.20.2 to 1.20.3 in /tests/apps/gogrpc
- #5782: @dependabot[bot] chore(deps): bump golang from 1.20.2 to 1.20.3 in /tests/apps/go-fail-postdeploy
- #5788: @dependabot[bot] chore(deps): bump python from 3.11.2-alpine to 3.11.3-alpine in /docs/_build
- #5795: @dependabot[bot] chore(deps): bump pygments from 2.14.0 to 2.15.0 in /docs/_build
- #5796: @dependabot[bot] chore(deps): bump beautifulsoup4 from 4.12.0 to 4.12.2 in /docs/_build
- #5797: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.4 to 9.1.6 in /docs/_build
- #5801: @dependabot[bot] chore(deps): bump sinatra from 3.0.5 to 3.0.6 in /tests/apps/ruby
- #5794: @dependabot[bot] chore(deps): bump pymdown-extensions from 9.10 to 9.11 in /docs/_build
- #5793: @dependabot[bot] chore(deps): bump importlib-metadata from 6.1.0 to 6.3.0 in /docs/_build
- #5791: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.8.0 to 0.9.0 in /tests/apps/gogrpc
- #5789: @dependabot[bot] chore(deps): bump python from 3.11.2-buster to 3.11.3-buster in /tests/apps/dockerfile-release
- #5783: @dependabot[bot] chore(deps): bump golang from 1.20.2 to 1.20.3 in /tests/apps/zombies-dockerfile-tini
- #5781: @dependabot[bot] chore(deps): bump golang from 1.20.2 to 1.20.3 in /tests/apps/zombies-dockerfile-no-tini
- #5780: @dependabot[bot] chore(deps): bump golang from 1.20.2 to 1.20.3 in /tests/apps/go-fail-predeploy
- #5775: @dependabot[bot] chore(deps): bump ruby from 3.2.1 to 3.2.2 in /tests/apps/dockerfile-entrypoint
- #5774: @dependabot[bot] chore(deps): bump thin from 1.8.1 to 1.8.2 in /tests/apps/ruby
- #5765: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.3 to 9.1.4 in /docs/_build

## 0.30.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.2/bootstrap.sh
sudo DOKKU_TAG=v0.30.2 bash bootstrap.sh
```

### Bug Fixes

- #5749: @josegonzalez Keep image specified by git:from-image on app rebuild
- #5750: @josegonzalez Return an error when an invalid scale count is encountered
- #5748: @josegonzalez Correct set source type and source metadata

### New Features

- #5754: @josegonzalez Ignore release branches in changelog output

### Removals

- #5756: @josegonzalez Drop code supporting git versions without worktree support

### Documentation

- #5744: @josegonzalez Add DOKKU_LIB_HOST_ROOT to docker usage docs
- #5740: @josegonzalez Add a note about how running plugin:install does not apply for docker-based installs
- #5719: @TkTech Give a quick example of what to do after disabling the proxy to expose a UDP port
- #5737: @Samuelodan Update instructions for setting letsencrypt global email
- #5736: @josegonzalez Remove extra backtick from nginx docs
- #5725: @IgnisDa Add surrealdb community plugin

### Tests

- #5755: @josegonzalez Ignore issue where errors are required to be lowercased

### Dependencies

- #5762: @dependabot[bot] chore(deps): bump watchdog from 2.3.1 to 3.0.0 in /docs/_build
- #5760: @dependabot[bot] chore(deps): bump importlib-metadata from 6.0.0 to 6.1.0 in /docs/_build
- #5761: @dependabot[bot] chore(deps): bump beautifulsoup4 from 4.11.2 to 4.12.0 in /docs/_build
- #5745: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.2 to 9.1.3 in /docs/_build
- #5746: @dependabot[bot] chore(deps): bump rack from 2.2.6.3 to 2.2.6.4 in /tests/apps/ruby
- #5732: @dependabot[bot] chore(deps): bump github.com/golang/protobuf from 1.5.2 to 1.5.3 in /tests/apps/gogrpc
- #5727: @dependabot[bot] chore(deps): bump golang from 1.20.1 to 1.20.2 in /tests/apps/zombies-dockerfile-tini
- #5708: @dependabot[bot] chore(deps): bump zipp from 3.14.0 to 3.15.0 in /docs/_build
- #5734: @dependabot[bot] chore(deps): bump mkdocs-material from 9.1.0 to 9.1.2 in /docs/_build
- #5731: @dependabot[bot] chore(deps): bump rack from 2.2.6.2 to 2.2.6.3 in /tests/apps/ruby
- #5730: @dependabot[bot] chore(deps): bump golang from 1.20.1 to 1.20.2 in /tests/apps/go-fail-predeploy
- #5729: @dependabot[bot] chore(deps): bump golang from 1.20.1 to 1.20.2 in /tests/apps/zombies-dockerfile-no-tini
- #5728: @dependabot[bot] chore(deps): bump golang from 1.20.1 to 1.20.2 in /tests/apps/gogrpc
- #5726: @dependabot[bot] chore(deps): bump golang from 1.20.1 to 1.20.2 in /tests/apps/go-fail-postdeploy
- #5723: @dependabot[bot] chore(deps): bump pymdown-extensions from 9.9.2 to 9.10 in /docs/_build
- #5722: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.7.0 to 0.8.0 in /tests/apps/gogrpc
- #5721: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.0.0-20220225172249-27dd8689420f to 0.7.0 in /plugins/common
- #5715: @dependabot[bot] chore(deps): bump luizm/action-sh-checker from 0.5.0 to 0.7.0
- #5712: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.13 to 11.0.14 in /tests/apps/java
- #5713: @dependabot[bot] chore(deps): bump watchdog from 2.3.0 to 2.3.1 in /docs/_build
- #5717: @dependabot[bot] chore(deps): bump mkdocs-material from 9.0.14 to 9.1.0 in /docs/_build
- #5703: @dependabot[bot] chore(deps): bump golang.org/x/net from 0.0.0-20190813141303-74dc4d7220e7 to 0.7.0 in /tests/apps/gogrpc
- #5705: @dependabot[bot] chore(deps): bump mkdocs-material from 9.0.13 to 9.0.14 in /docs/_build
- #5704: @dependabot[bot] chore(deps): bump watchdog from 2.2.1 to 2.3.0 in /docs/_build
- #5698: @dependabot[bot] chore(deps): bump golang.org/x/text from 0.3.7 to 0.3.8 in /plugins/common
- #5697: @dependabot[bot] chore(deps): bump golang.org/x/text from 0.3.2 to 0.3.8 in /tests/apps/gogrpc

### Other

- #5751: @josegonzalez Update all golang dependencies to fix go.0 tests

## 0.30.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.1/bootstrap.sh
sudo DOKKU_TAG=v0.30.1 bash bootstrap.sh
```

### Bug Fixes

- #5690: @josegonzalez Update dependencies for golang code to fix builds
- #5683: @josegonzalez Ensure the services directory also exists
- #5688: @josegonzalez Set custom entrypoint for pack-based containers so custom command/argument combinations are respected

### New Features

- #5682: @josegonzalez Build Digitalocean image automatically upon release
- #5675: @josegonzalez Add new sections to release notes

### Documentation

- #5695: @josegonzalez Add a note about required upgrade to 0.29.x for versions prior to 0.25.x
- #5689: @josegonzalez Add note about ubuntu 18.04 being deprecated
- #5684: @josegonzalez Note that the app.json is pulled from the specified image when deploying via git:from-image
- #5679: @josegonzalez Revert invalid replacement in homepage html path objects
- #5678: @josegonzalez Cleanup docs on homepage for installation

### Dependencies

- #5693: @dependabot[bot] chore(deps): bump mkdocs-material from 9.0.12 to 9.0.13 in /docs/_build
- #5694: @dependabot[bot] chore(deps): bump zipp from 3.13.0 to 3.14.0 in /docs/_build
- #5677: @dependabot[bot] chore(deps): bump flask from 2.2.2 to 2.2.3 in /tests/apps/multi
- #5676: @dependabot[bot] chore(deps): bump flask from 2.2.2 to 2.2.3 in /tests/apps/python-flask

## 0.30.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.30.0/bootstrap.sh
sudo DOKKU_TAG=v0.30.0 bash bootstrap.sh
```

See the [0.30.0 migration guide](/docs/appendices/0.30.0-migration-guide.md) for more information on migrating to 0.30.0.

### Bug Fixes

- #5674: @josegonzalez Use authenticated requests to the github api in order to generate changelogs for a release
- #5604: @josegonzalez Trigger nginx proxy rebuild early to avoid downtime if deploying large numbers of processes
- #5589: @josegonzalez Use warning_scheme variable instead of bare word in caddy-vhosts warning output
- #5580: @josegonzalez Do not attempt to reinstall already installed plugins

### New Features

- #5663: @josegonzalez Update build-base docker image to ensure we can build on all supported platforms without stalling
- #5308: @josegonzalez Implement haproxy proxy plugin
- #5633: @josegonzalez Add auto-updates to docs python dependencies
- #5603: @josegonzalez Add ability to deploy images generated via docker save with git:load-image
- #5591: @josegonzalez Allow the herokuish builder to be detected when the computed allowed value is set not set to false
- #5570: @josegonzalez Add support for customizing the remote in use for all commands sent via the official client
- #5581: @josegonzalez Use short url for installation

### Refactors

- #5659: @josegonzalez Remove deprecated functions and commands

### Documentation

- #5658: @mpslanker Updated debian install docs to work on both debian and ubuntu
- #5657: @josegonzalez Use correct version of Markdown for mkdocs
- #5656: @josegonzalez Add "new as of" prefix to version in user management docs
- #5645: @josegonzalez Update mkdocs-material features to cope with upgrade to 9.x
- #5632: @josegonzalez Add a note mentioning that network aliases only work when attached to a network other than bridge
- #5630: @josegonzalez Remove extra location block from built docs nginx config
- #5616: @jcalfee Add a note about reloading nginx to troubleshooting docs
- #5590: @josegonzalez Note that connecting to vagrant should be done via vagrant ssh
- #5588: @josegonzalez Document how to route to server-local apps via a service proxy
- #5585: @NicolasLM Improve instructions for disabling the default nginx site

### Tests

- #5673: @josegonzalez Cancel in progress builds when a new commit is pushed
- #5611: @josegonzalez Add more debugging output to deploy tests
- #5587: @josegonzalez Timeout build jobs within 45 minutes

### Other

- #5671: @dependabot[bot] chore(deps): bump soupsieve from 2.3.2.post1 to 2.4 in /docs/_build
- #5666: @dependabot[bot] chore(deps): bump golang from 1.20.0 to 1.20.1 in /tests/apps/go-fail-predeploy
- #5672: @dependabot[bot] chore(deps): bump django from 4.1.6 to 4.1.7 in /tests/apps/dockerfile-release
- #5670: @dependabot[bot] chore(deps): bump golang from 1.20.0 to 1.20.1 in /tests/apps/zombies-dockerfile-no-tini
- #5669: @dependabot[bot] chore(deps): bump golang from 1.20.0 to 1.20.1 in /tests/apps/go-fail-postdeploy
- #5668: @dependabot[bot] chore(deps): bump golang from 1.20.0 to 1.20.1 in /tests/apps/gogrpc
- #5667: @dependabot[bot] chore(deps): bump golang from 1.20.0 to 1.20.1 in /tests/apps/zombies-dockerfile-tini
- #5665: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 230 to 231 in /tests/apps/php
- #5664: @dependabot[bot] chore(deps): bump werkzeug from 2.2.2 to 2.2.3 in /tests/apps/python-flask
- #5559: @josegonzalez Move app.json extraction from built image artifact to source code
- #5661: @dependabot[bot] chore(deps): update markdown requirement from <3.4,>=3.2.1 to >=3.2.1,<3.5 in /docs/_build
- #5655: @dependabot[bot] chore(deps): bump zipp from 3.12.1 to 3.13.0 in /docs/_build
- #5654: @dependabot[bot] chore(deps): bump mkdocs-material from 9.0.11 to 9.0.12 in /docs/_build
- #5648: @dependabot[bot] chore(deps): bump markdown from 3.3.7 to 3.4.1 in /docs/_build
- #5650: @dependabot[bot] chore(deps): bump python from 3.11.1-buster to 3.11.2-buster in /tests/apps/dockerfile-release
- #5651: @dependabot[bot] chore(deps): bump ruby from 3.2.0 to 3.2.1 in /tests/apps/dockerfile-entrypoint
- #5652: @dependabot[bot] chore(deps): bump python from 3.11.1-alpine to 3.11.2-alpine in /docs/_build
- #5647: @dependabot[bot] chore(deps): bump importlib-metadata from 4.12.0 to 6.0.0 in /docs/_build
- #5646: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 229 to 230 in /tests/apps/php
- #5634: @dependabot[bot] chore(deps): bump mkdocs-material from 8.4.2 to 9.0.11 in /docs/_build
- #5637: @dependabot[bot] chore(deps): bump packaging from 21.3 to 23.0 in /docs/_build
- #5643: @dependabot[bot] chore(deps): bump watchdog from 2.1.9 to 2.2.1 in /docs/_build
- #5642: @dependabot[bot] chore(deps): bump pymdown-extensions from 9.5 to 9.9.2 in /docs/_build
- #5639: @dependabot[bot] chore(deps): bump mkdocs from 1.3.1 to 1.4.2 in /docs/_build
- #5638: @dependabot[bot] chore(deps): bump mkdocs-material-extensions from 1.0.3 to 1.1.1 in /docs/_build
- #5631: @dependabot[bot] chore(deps): bump socket.io from 4.5.4 to 4.6.0 in /tests/apps/.websocket.disabled
- #5636: @dependabot[bot] chore(deps): bump markupsafe from 2.1.1 to 2.1.2 in /docs/_build
- #5641: @dependabot[bot] chore(deps): bump beautifulsoup4 from 4.11.1 to 4.11.2 in /docs/_build
- #5635: @dependabot[bot] chore(deps): bump pygments from 2.13.0 to 2.14.0 in /docs/_build
- #5640: @dependabot[bot] chore(deps): bump zipp from 3.8.1 to 3.12.1 in /docs/_build
- #5629: @josegonzalez Update list indentation explaining network property utilization
- #5617: @dependabot[bot] chore(deps): bump golang from 1.19.5 to 1.20.0 in /tests/apps/go-fail-predeploy
- #5620: @dependabot[bot] chore(deps): bump golang from 1.19.5 to 1.20.0 in /tests/apps/gogrpc
- #5618: @dependabot[bot] chore(deps): bump golang from 1.19.5 to 1.20.0 in /tests/apps/go-fail-postdeploy
- #5625: @dependabot[bot] chore(deps): bump django from 4.1.2 to 4.1.6 in /tests/apps/dockerfile-release
- #5619: @dependabot[bot] chore(deps): bump golang from 1.19.5 to 1.20.0 in /tests/apps/zombies-dockerfile-no-tini
- #5621: @dependabot[bot] chore(deps): bump golang from 1.19.5 to 1.20.0 in /tests/apps/zombies-dockerfile-tini
- #5615: @dependabot[bot] chore(deps): bump ludeeus/action-shellcheck from 1.1.0 to 2.0.0
- #5610: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 227 to 229 in /tests/apps/php
- #5608: @josegonzalez tests: refactor the config test to use a simple python codebase instead
- #5606: @josegonzalez Ensure the mounted services directory is symlinked correctly
- #5558: @josegonzalez Remove references to ubuntu 18.04 ahead of EOL
- #5600: @dependabot[bot] chore(deps): bump rack from 2.2.4 to 2.2.6.2 in /tests/apps/ruby
- #5598: @dependabot[bot] chore(deps): bump hadolint/hadolint-action from 3.0.0 to 3.1.0
- #5595: @josegonzalez Remove deprecated ability to call logs:failed without specifying an app or --all flag
- #5594: @josegonzalez Remove deprecated builder-specific post-release hooks
- #5593: @josegonzalez Remove deprecated --detach flag
- #5592: @josegonzalez Remove support for DOKKU_SCALE file
- #5560: @josegonzalez Drop SPDY support from nginx plugin
- #5579: @dependabot[bot] chore(deps): bump maven-dependency-plugin from 3.4.0 to 3.5.0 in /tests/apps/java

## 0.29.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.29.4/bootstrap.sh
sudo DOKKU_TAG=v0.29.4 bash bootstrap.sh
```

### Bug Fixes

- #5571: @josegonzalez Ensure we properly setup all data directories on app install and creation
- #5555: @josegonzalez Drop debugging code from ps plugin

### Documentation

- #5563: @kbuilds Clarify documentation for default site under nginx

### Tests

- #5557: @josegonzalez Update GitHub actions

### Other

- #5577: @dependabot[bot] chore(deps): bump golang from 1.19.4 to 1.19.5 in /tests/apps/gogrpc
- #5573: @dependabot[bot] chore(deps): bump golang from 1.19.4 to 1.19.5 in /tests/apps/go-fail-postdeploy
- #5574: @dependabot[bot] chore(deps): bump golang from 1.19.4 to 1.19.5 in /tests/apps/zombies-dockerfile-tini
- #5575: @dependabot[bot] chore(deps): bump golang from 1.19.4 to 1.19.5 in /tests/apps/go-fail-predeploy
- #5576: @dependabot[bot] chore(deps): bump golang from 1.19.4 to 1.19.5 in /tests/apps/zombies-dockerfile-no-tini

## 0.29.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.29.3/bootstrap.sh
sudo DOKKU_TAG=v0.29.3 bash bootstrap.sh
```

### Bug Fixes

- #5544: @josegonzalez Exit non-zero when git:from-image deploys fail to start the app
- #5543: @josegonzalez Properly parse arguments for git:status command

### Tests

- #5554: @josegonzalez Validate that procfile-path is respected

### Other

- #5551: @dependabot[bot] chore(deps): bump ruby from 3.1.3 to 3.2.0 in /tests/apps/dockerfile-entrypoint
- #5547: @dependabot[bot] chore(deps): bump setuptools from 65.5.0 to 65.5.1 in /tests/apps/dockerfile-release
- #5542: @josegonzalez Add json output format support to storage:list

## 0.29.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.29.2/bootstrap.sh
sudo DOKKU_TAG=v0.29.2 bash bootstrap.sh
```

### Bug Fixes

- #5537: @jamesremuscat Correctly include `auth` middleware on `api` router.

## 0.29.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.29.1/bootstrap.sh
sudo DOKKU_TAG=v0.29.1 bash bootstrap.sh
```

### Bug Fixes

- #5532: @josegonzalez Fix issue where git:from-image deploys may result in extracted files not being respected

### Documentation

- #5531: @josegonzalez Fix indentation on heading in where to get help
- #5521: @AlejandroAkbal Remove reference to `--rm` flag cron task documentation
- #5517: @josegonzalez Fix reference to scheduler name in kubernetes docs
- #5516: @josegonzalez Fix reference to scheduler name in nomad docs

### Tests

- #5533: @josegonzalez Add a test case for nested vector-sink values with plus signs

### Other

- #5534: @dependabot[bot] chore(deps): bump sinatra from 3.0.4 to 3.0.5 in /tests/apps/ruby
- #5514: @dependabot[bot] chore(deps): bump golang from 1.19.3 to 1.19.4 in /tests/apps/go-fail-predeploy
- #5512: @dependabot[bot] chore(deps): bump golang from 1.19.3 to 1.19.4 in /tests/apps/go-fail-postdeploy
- #5513: @dependabot[bot] chore(deps): bump golang from 1.19.3 to 1.19.4 in /tests/apps/zombies-dockerfile-no-tini
- #5511: @dependabot[bot] chore(deps): bump golang from 1.19.3 to 1.19.4 in /tests/apps/zombies-dockerfile-tini
- #5510: @dependabot[bot] chore(deps): bump golang from 1.19.3 to 1.19.4 in /tests/apps/gogrpc
- #5525: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.12 to 11.0.13 in /tests/apps/java
- #5519: @dependabot[bot] chore(deps): bump python from 3.11.0-buster to 3.11.1-buster in /tests/apps/dockerfile-release
- #5520: @dependabot[bot] chore(deps): bump python from 3.11.0-alpine to 3.11.1-alpine in /docs/_build

## 0.29.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.29.0/bootstrap.sh
sudo DOKKU_TAG=v0.29.0 bash bootstrap.sh
```

See the [0.29.0 migration guide](/docs/appendices/0.29.0-migration-guide.md) for more information on migrating to 0.29.0.

### Bug Fixes

- #5506: @josegonzalez Add support for escaped plus (+) signs in vector configurations
- #5505: @josegonzalez Add missing event hooks
- #5493: @josegonzalez Correct issue with detection of non-https port mapping as https port mapping
- #5499: @josegonzalez Do not use traefik priority in service name
- #5491: @josegonzalez Add missing http part to traefik routing rule
- #5477: @josegonzalez Add missing config_sub entry to config gitignore
- #5474: @josegonzalez Add missing source call
- #5345: @esirK Always set app created-at via property instead of introspecting on folder creation time
- #5456: @cooperaj Ensure Traefik only attempts to obtain certificate for api when enabled
- #5466: @josegonzalez Drop the app argument when calling storage:ensure-directory from remote client
- #5458: @cooperaj Ensure the TLS resolver is specifed for HTTPS enabled apps
- #5448: @josegonzalez Do not attempt to attach a network to a container that already has it

### New Features

- #5494: @josegonzalez Silence the warning message when there are no dokku apps on install
- #5490: @josegonzalez Add ability to set a custom priority for traefik routing rules
- #5489: @josegonzalez Use exit code 137 to signify a lock was unable to be retrieved when calling ps:retire
- #5487: @josegonzalez Use a priority when routing requests with traefik
- #5481: @josegonzalez Drop installation of nginx ppa
- #5478: @josegonzalez Allow users to enable herokuish usage on arm/arm64 platforms
- #5479: @josegonzalez Cleanup builder code and docs
- #5476: @josegonzalez Add fileutils plugin to the devcontainer
- #5473: @josegonzalez Add warning when a user is attempting to deploy with an ipv4/ipv6 domain name and has the default nginx site file available
- #5451: @josegonzalez Add git:status subcommand
- #5349: @josegonzalez Error out when executing caddy and traefik commands without the compose plugin installed
- #5322: @josegonzalez Implement run:logs command
- #5321: @josegonzalez Implement run:stop command
- #5434: @josegonzalez Upgrade to go 1.19 everywhere
- #5320: @josegonzalez Add json format output to run:list

### Refactors

- #5488: @josegonzalez De-duplicate proxy building and simplify url generation
- #5454: @josegonzalez Switch from base64-encoding to base36-encoding of cron task IDs

### Documentation

- #5509: @josegonzalez Update data loss blockquote to be warning
- #5507: @josegonzalez Add tutorials link to navigation
- #5503: @josegonzalez Document potential deployment downtime
- #5484: @IgnisDa Add edgedb community plugin
- #5482: @JonathanMH Fixes minor typos in proxy docs
- #5465: @josegonzalez Fix embedded lists on deployment tasks
- #5430: @pablobm Clarify that proxy:build-config is required for any nginx:set call
- #5447: @josegonzalez Specify correct command for builder-lambda:report
- #5429: @pablobm Clarify details of the default template

### Tests

- #5449: @josegonzalez Install goverage via go get

### Other

- #5500: @dependabot[bot] chore(deps): bump maven-dependency-plugin from 3.3.0 to 3.4.0 in /tests/apps/java
- #5472: @josegonzalez Start started proxies automatically during ps:restore
- #5497: @dependabot[bot] chore(deps): bump ruby from 3.1.2 to 3.1.3 in /tests/apps/dockerfile-entrypoint
- #5496: @dependabot[bot] chore(deps): bump sinatra from 3.0.3 to 3.0.4 in /tests/apps/ruby
- #5480: @josegonzalez Cleanup zero'd out processes when a Procfile omitting those process types is set
- #5475: @josegonzalez Refactor nginx.conf.sigil to be extracted from a specified path in source code instead of the built image
- #5467: @josegonzalez Move DOKKU_WAIT_TO_RETIRE to a checks property
- #5455: @dependabot[bot] chore(deps): bump hadolint/hadolint-action from 2.1.0 to 3.0.0
- #5463: @dependabot[bot] chore(deps): bump sinatra from 3.0.2 to 3.0.3 in /tests/apps/ruby
- #5450: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 226 to 227 in /tests/apps/php
- #5437: @dependabot[bot] chore(deps): bump golang from 1.19.2 to 1.19.3 in /tests/apps/zombies-dockerfile-tini
- #5441: @dependabot[bot] chore(deps): bump golang from 1.19.2 to 1.19.3 in /tests/apps/gogrpc
- #5440: @dependabot[bot] chore(deps): bump golang from 1.19.2 to 1.19.3 in /tests/apps/go-fail-predeploy
- #5439: @dependabot[bot] chore(deps): bump golang from 1.19.2 to 1.19.3 in /tests/apps/zombies-dockerfile-no-tini
- #5438: @dependabot[bot] chore(deps): bump golang from 1.19.2 to 1.19.3 in /tests/apps/go-fail-postdeploy
- #5431: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 225 to 226 in /tests/apps/php
- #5426: @dependabot[bot] chore(deps): bump python from 3.10.0-buster to 3.11.0-buster in /tests/apps/dockerfile-release
- #5319: @josegonzalez Use container name instead of container id for run:detached output
- #5427: @dependabot[bot] chore(deps): bump python from 3.10.8-alpine to 3.11.0-alpine in /docs/_build

## 0.28.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.28.4/bootstrap.sh
sudo DOKKU_TAG=v0.28.4 bash bootstrap.sh
```

### Bug Fixes

- #5423: @josegonzalez Respect PLUGIN_PATH when checking if a plugin trigger exists
- #5425: @josegonzalez Ignore https mappings when no ssl certificate exists

### New Features

- #5424: @josegonzalez Download all src files for go mod dependencies for use in vscode

### Documentation

- #5421: @josegonzalez Document that scaling via app.json will set all other processes to zero

### Tests

- #5422: @josegonzalez Test that build-arg works as expected

### Other

- #5418: @dependabot[bot] chore(deps): bump node from 18-alpine to 19-alpine in /tests/apps/dockerfile-noexpose
- #5417: @dependabot[bot] chore(deps): bump node from 18-alpine to 19-alpine in /tests/apps/dockerfile-procfile-bad
- #5419: @dependabot[bot] chore(deps): bump node from 18-alpine to 19-alpine in /tests/apps/dockerfile-dokku-scale
- #5416: @dependabot[bot] chore(deps): bump node from 18-alpine to 19-alpine in /tests/apps/dockerfile-procfile
- #5415: @dependabot[bot] chore(deps): bump node from 18-alpine to 19-alpine in /tests/apps/dockerfile
- #5413: @dependabot[bot] chore(deps): bump ibiqlik/action-yamllint from 3.1.0 to 3.1.1

## 0.28.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.28.3/bootstrap.sh
sudo DOKKU_TAG=v0.28.3 bash bootstrap.sh
```

### New Features

- #5394: @josegonzalez Add support for automatically updating Dockerfile FROM statements via dependabot

### Other

- #5411: @dependabot[bot] chore(deps): bump python from 3.8-buster to 3.10.0-buster in /tests/apps/dockerfile-release
- #5400: @dependabot[bot] chore(deps): bump node from 4-alpine to 18-alpine in /tests/apps/dockerfile-procfile
- #5405: @dependabot[bot] chore(deps): bump node from 4-alpine to 18-alpine in /tests/apps/dockerfile
- #5397: @dependabot[bot] chore(deps): bump ruby from 2.5.1 to 3.1.2 in /tests/apps/dockerfile-entrypoint
- #5401: @dependabot[bot] chore(deps): bump golang from 1.17.1 to 1.19.2 in /tests/apps/go-fail-postdeploy
- #5403: @dependabot[bot] chore(deps): bump golang from 1.17.1 to 1.19.2 in /tests/apps/zombies-dockerfile-tini
- #5407: @dependabot[bot] chore(deps): bump python from 3.10-alpine to 3.10.8-alpine in /docs/_build
- #5404: @dependabot[bot] chore(deps): bump node from 4-alpine to 18-alpine in /tests/apps/dockerfile-dokku-scale
- #5402: @dependabot[bot] chore(deps): bump node from 4-alpine to 18-alpine in /tests/apps/dockerfile-procfile-bad
- #5398: @dependabot[bot] chore(deps): bump golang from 1.17.1 to 1.19.2 in /tests/apps/go-fail-predeploy
- #5396: @dependabot[bot] chore(deps): bump golang from 1.17.1 to 1.19.2 in /tests/apps/gogrpc
- #5399: @dependabot[bot] chore(deps): bump golang from 1.17.1 to 1.19.2 in /tests/apps/zombies-dockerfile-no-tini
- #5395: @dependabot[bot] chore(deps): bump node from 4-alpine to 18-alpine in /tests/apps/dockerfile-noexpose

## 0.28.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.28.2/bootstrap.sh
sudo DOKKU_TAG=v0.28.2 bash bootstrap.sh
```

### Bug Fixes

- #5393: @josegonzalez Correct issue with replacing the version in the installation guide
- #5354: @josegonzalez Report the correct value for the letsencrypt server
- #5347: @josegonzalez Set correct version on builder-lambda plugin

### New Features

- #5392: @josegonzalez Add support for devcontainers on ARM64 instances

### Documentation

- #5365: @josegonzalez Use correct indentation for embedded list in remote commands documentation
- #5357: @josegonzalez Reference blog on main domain
- #5355: @josegonzalez Autogenerate documentation in CI
- #5351: @josegonzalez Fix formatting on list in deployment tasks
- #5328: @holtergram Call out git remote change when renaming an app
- #5344: @josegonzalez Generate docs via mkdocs
- #5342: @josegonzalez Ensure doc links work on github as well as on docs site
- #5336: @josegonzalez Add note about docker-compose requirement for using the caddy plugin
- #5337: @josegonzalez Add note about docker-compose requirement for using the traefik…
- #5332: @cdubz Remove errant semicolon from wget command
- #5329: @josegonzalez Use updated url for gliderlabs slack invite app
- #5315: @alexislefebvre Fix doc link for systems with less than 1GB memory

### Other

- #5382: @dependabot[bot] chore(deps): bump sinatra from 2.2.2 to 3.0.2 in /tests/apps/ruby
- #5386: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 224 to 225 in /tests/apps/php
- #5361: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.11 to 11.0.12 in /tests/apps/java
- #5346: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 223 to 224 in /tests/apps/php

## 0.28.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.28.1/bootstrap.sh
sudo DOKKU_TAG=v0.28.1 bash bootstrap.sh
```

### Bug Fixes

- #5313: @josegonzalez Fix issues with multiple domains in new proxy plugins

## 0.28.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.28.0/bootstrap.sh
sudo DOKKU_TAG=v0.28.0 bash bootstrap.sh
```

See the [0.28.0 migration guide](/docs/appendices/0.28.0-migration-guide.md) for more information on migrating to 0.28.0.

### Bug Fixes

- #5299: @josegonzalez Do not trigger restarts when mutating config globally
- #5298: @josegonzalez Set core.bare=true on correct repository path

### New Features

- #5300: @josegonzalez Add the ability to disable the init process
- #5295: @josegonzalez Add an official caddy proxy implementation
- #5293: @josegonzalez Add an official traefik proxy implementation
- #5202: @josegonzalez Add builder-lambda plugin

### Documentation

- #5296: @janlavicka Fix typo in kubernetes docs
- #5288: @josegonzalez Do not have bottom border float on page
- #5283: @alexgleason Homepage: fix link in quick install guide

### Other

- #5297: @josegonzalez Update vector image
- #5294: @josegonzalez Document and enable alternative proxy implementations
- #5291: @dependabot[bot] chore(deps): bump werkzeug from 2.2.1 to 2.2.2 in /tests/apps/python-flask
- #5292: @dependabot[bot] chore(deps): bump flask from 2.2.1 to 2.2.2 in /tests/apps/multi
- #5290: @dependabot[bot] chore(deps): bump flask from 2.2.1 to 2.2.2 in /tests/apps/python-flask
- #5227: @josegonzalez Drop forwarded port from vagrant setup
- #5285: @josegonzalez Update all development dependencies
- #5240: @josegonzalez Drop support for CentOS, Fedora, OpenSuse, as well as Debian 9
- #5281: @dependabot[bot] chore(deps): bump flask from 2.1.3 to 2.2.1 in /tests/apps/multi
- #5280: @dependabot[bot] chore(deps): bump flask from 2.1.3 to 2.2.1 in /tests/apps/python-flask
- #5284: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 222 to 223 in /tests/apps/php

## 0.27.10

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.10/bootstrap.sh
sudo DOKKU_TAG=v0.27.10 bash bootstrap.sh
```

### Bug Fixes

- #5276: @d6rkaiz Remove duplicate syntax for nginx.conf

### Other

- #5274: @kennell readme: mention Ubuntu 22.04 compability

## 0.27.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.9/bootstrap.sh
sudo DOKKU_TAG=v0.27.9 bash bootstrap.sh
```

### Bug Fixes

- #5273: @josegonzalez Correct issue where more complex docker args were not properly parsed when scheduling containers
- #5272: @josegonzalez Add support for --global as app name when calling config-get trigger
- #5263: @alexgleason Update deprecated apt-key command

### New Features

- #5262: @josegonzalez Run shfmt against all test files
- #5257: @chrisjdixon Move nginx.conf.d includes after all other hard-coded config to allow for overrides

### Other

- #5184: @yasoob New website. Closes #5175
- #5270: @dependabot[bot] chore(deps): bump werkzeug from 2.2.0 to 2.2.1 in /tests/apps/python-flask
- #5265: @dependabot[bot] chore(deps): bump werkzeug from 2.1.2 to 2.2.0 in /tests/apps/python-flask
- #5264: @dependabot[bot] chore(deps): bump sinatra from 2.2.1 to 2.2.2 in /tests/apps/ruby
- #5261: @dependabot[bot] chore(deps): bump luizm/action-sh-checker from 0.4.0 to 0.5.0
- #5258: @dependabot[bot] chore(deps): bump sinatra from 2.2.0 to 2.2.1 in /tests/apps/ruby

## 0.27.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.8/bootstrap.sh
sudo DOKKU_TAG=v0.27.8 bash bootstrap.sh
```

### Bug Fixes

- #5232: @YuukiHogo builder-build fix for DOKKU_DOCKERFILE_CACHE_BUILD and DOKKU_DOCKER_BUILD_OPTS variables

### New Features

- #5255: @josegonzalez export DOKKU_COMMAND for use in authentication systems

### Other

- #5250: @dependabot[bot] chore(deps): bump flask from 2.1.2 to 2.1.3 in /tests/apps/multi
- #5251: @dependabot[bot] chore(deps): bump flask from 2.1.2 to 2.1.3 in /tests/apps/python-flask
- #5245: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 221 to 222 in /tests/apps/php

## 0.27.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.7/bootstrap.sh
sudo DOKKU_TAG=v0.27.7 bash bootstrap.sh
```

### Bug Fixes

- #5238: @josegonzalez Respect dokku system user/group when setting storage permissions on installation

### New Features

- #5239: @josegonzalez Add builder-type and image-stage labels to all images

### Documentation

- #5241: @josegonzalez Clarify where logs are pulled from and general log shipping stance
- #5237: @josegonzalez Fix builder-pack:set command example

### Other

- #5235: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 220 to 221 in /tests/apps/php

## 0.27.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.6/bootstrap.sh
sudo DOKKU_TAG=v0.27.6 bash bootstrap.sh
```

### Bug Fixes

- #5225: @josegonzalez Use original app name when setting include_labels for vector source
- #5228: @josegonzalez Always respect app.json formations in scale settings
- #5201: @josegonzalez Use pack as default builder for arm64 servers

### Documentation

- #5230: @josegonzalez Clarify usage of build args to set environment variables for Dockerfile deploys
- #5208: @asokoloski-m Fix typo in dockerfile builder docs
- #5206: @AxelTheGerman Added dokku-litestream to list of community plugins

### Other

- #5218: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 219 to 220 in /tests/apps/php
- #5222: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.10 to 11.0.11 in /tests/apps/java
- #5224: @josegonzalez Document that the community registry plugin should be uninstalled before upgrading past 0.24.x
- #5220: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.9 to 11.0.10 in /tests/apps/java
- #5212: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 218 to 219 in /tests/apps/php
- #5210: @dependabot[bot] chore(deps): bump monolog/monolog from 1.27.0 to 1.27.1 in /tests/apps/php
- #5204: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 217 to 218 in /tests/apps/php

## 0.27.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.5/bootstrap.sh
sudo DOKKU_TAG=v0.27.5 bash bootstrap.sh
```

### Bug Fixes

- #5183: @josegonzalez Filter apps when verifying app names
- #5199: @josegonzalez Revert "fix: Vector fails to start container due to --watch-config flag"
- #5197: @holamendi fix: Vector fails to start container due to --watch-config flag
- #5192: @josegonzalez Confirm installation of universe packages when installing on ubuntu
- #5193: @josegonzalez Force-set correct permissions on env files
- #5181: @josegonzalez Ensure we default SSH_NAME to NAME when filtering apps

### New Features

- #5196: @josegonzalez Disable herokuish usage on both armhf and arm64 platforms
- #5194: @josegonzalez Upgrade base Dockerfile image to phusion/baseimage:focal-1.2.0

### Other

- #5200: @dependabot[bot] chore(deps): bump rack from 2.2.3 to 2.2.3.1 in /tests/apps/ruby
- #5198: @dependabot[bot] chore(deps): bump grunt from 1.5.2 to 1.5.3 in /tests/apps/multi
- #5187: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 216 to 217 in /tests/apps/php

## 0.27.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.4/bootstrap.sh
sudo DOKKU_TAG=v0.27.4 bash bootstrap.sh
```

### Documentation

- #5180: @Bilal-io fixes rst-versions height

## 0.27.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.3/bootstrap.sh
sudo DOKKU_TAG=v0.27.3 bash bootstrap.sh
```

### Bug Fixes

- #5178: @josegonzalez Fix app filtering for authenticated usage
- #5173: @bitjockey42 Add 22.04 to supported distro versions

### Documentation

- #5179: @Bilal-io Fixes to the Docs version switcher
- #5177: @josegonzalez docs: cleanup experimental warning in scheduler docs
- #5176: @josegonzalez Update installation requirements to mention arm64 and ubuntu 22.04
- #5174: @vladdoster Fix typos and phrasing in remote commands documentation

## 0.27.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.2/bootstrap.sh
sudo DOKKU_TAG=v0.27.2 bash bootstrap.sh
```

### Bug Fixes

- #5166: @josegonzalez Ensure permissions for global VHOST file are set to the dokku user on install
- #5141: @josegonzalez fix: set correct version on scheduler plugin
- #5069: @josegonzalez Do not start intermediate container when calling dokku run after a failed build

### New Features

- #5168: @josegonzalez Add support for Ubuntu 22.04
- #5125: @abulava Start the vector logging container after Docker daemon restarts
- #5117: @josegonzalez Upgrade to golang 1.17.9

### Documentation

- #5167: @scottpashley Update client documentation to remove reference to unmaintained python client

### Other

- #5120: @dependabot[bot] chore(deps): bump github/codeql-action from 1 to 2
- #5145: @dependabot[bot] chore(deps): bump jinja2 from 3.1.1 to 3.1.2 in /tests/apps/python-flask
- #5157: @dependabot[bot] chore(deps): bump luizm/action-sh-checker from 0.3.0 to 0.4.0
- #5160: @dependabot[bot] chore(deps): bump docker/setup-buildx-action from 1 to 2
- #5161: @dependabot[bot] chore(deps): bump docker/login-action from 1 to 2
- #5162: @dependabot[bot] chore(deps): bump docker/setup-qemu-action from 1 to 2
- #5153: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/config
- #5152: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/nodejs-express-noappjson
- #5151: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/nodejs-express-noprocfile
- #5150: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/nodejs-express
- #5154: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/gitsubmodules
- #5155: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/.websocket.disabled
- #5163: @dependabot[bot] chore(deps): bump minimist from 1.2.5 to 1.2.6 in /tests/apps/multi
- #5149: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/dockerfile-dokku-scale
- #5148: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/dockerfile-procfile-bad
- #5147: @dependabot[bot] chore(deps): bump express from 4.17.3 to 4.18.1 in /tests/apps/dockerfile-procfile
- #5144: @dependabot[bot] chore(deps): bump flask from 2.1.1 to 2.1.2 in /tests/apps/python-flask
- #5143: @dependabot[bot] chore(deps): bump werkzeug from 2.1.1 to 2.1.2 in /tests/apps/python-flask
- #5142: @dependabot[bot] chore(deps): bump flask from 2.1.1 to 2.1.2 in /tests/apps/multi
- #5137: @dependabot[bot] chore(deps): bump grunt from 1.4.1 to 1.5.2 in /tests/apps/multi
- #5119: @dependabot[bot] chore(deps): bump socket.io from 4.4.1 to 4.5.0 in /tests/apps/.websocket.disabled

## 0.27.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.1/bootstrap.sh
sudo DOKKU_TAG=v0.27.1 bash bootstrap.sh
```

### Bug Fixes

- #5095: @josegonzalez Ensure we properly clone and rename common properties
- #5094: @josegonzalez Handle case when apps:clone is run in a directory the dokku user does not have access to
- #5093: @josegonzalez Fix deploy branch setting
- #5068: @josegonzalez Properly set cron-id from flag

### New Features

- #5092: @josegonzalez Warn and exit non-zero when attempting to rebuild from a non-existent branch
- #5103: @naveensrinivasan Included githubactions in the dependabot config

### Documentation

- #5090: @josegonzalez Clarify the exact command that is run once a day by cron tasks
- #5085: @josegonzalez Use issue template form functionality on github
- #5076: @stamp-cmd Lint Markdown, Remove unused links
- #5070: @josegonzalez Add discord as support channel

### Other

- #5107: @dependabot[bot] chore(deps): bump actions/checkout from 2 to 3
- #5105: @dependabot[bot] chore(deps): bump ibiqlik/action-yamllint from 3.0.4 to 3.1
- #5109: @dependabot[bot] chore(deps): bump actions/upload-artifact from 2 to 3
- #5108: @dependabot[bot] chore(deps): bump hadolint/hadolint-action from 1.6.0 to 2.1.0
- #5110: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 215 to 216 in /tests/apps/php
- #5104: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 214 to 215 in /tests/apps/php
- #5097: @dependabot[bot] chore(deps): bump werkzeug from 2.1.0 to 2.1.1 in /tests/apps/python-flask
- #5098: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 213 to 214 in /tests/apps/php
- #5096: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.8 to 11.0.9 in /tests/apps/java
- #5091: @josegonzalez Update all dependencies for multi test app
- #5089: @dependabot[bot] chore(deps): bump minimist from 1.2.5 to 1.2.6 in /tests/apps/multi
- #5081: @dependabot[bot] chore(deps): bump jinja2 from 3.0.3 to 3.1.1 in /tests/apps/python-flask
- #5071: @dependabot[bot] chore(deps): bump monolog/monolog from 1.26.1 to 1.27.0 in /tests/apps/php
- #5075: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 212 to 213 in /tests/apps/php
- #5082: @dependabot[bot] chore(deps): bump werkzeug from 2.0.3 to 2.1.0 in /tests/apps/python-flask
- #5086: @dependabot[bot] chore(deps): bump flask from 2.0.3 to 2.1.1 in /tests/apps/multi
- #5087: @dependabot[bot] chore(deps): bump flask from 2.0.3 to 2.1.1 in /tests/apps/python-flask
- #5067: @dependabot[bot] chore(deps): bump maven-dependency-plugin from 3.2.0 to 3.3.0 in /tests/apps/java

## 0.27.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.27.0/bootstrap.sh
sudo DOKKU_TAG=v0.27.0 bash bootstrap.sh
```

See the [0.27.0 migration guide](/docs/appendices/0.27.0-migration-guide.md) for more information on migrating to 0.27.0.

### Bug Fixes

- #5063: @josegonzalez Fix buildx support for releases
- #5061: @josegonzalez Use correct token when publish unit test results
- #5057: @josegonzalez Ensure we use the correct variable for WAIT
- #5052: @josegonzalez Run crontab under sudo to support rhel systems
- #5051: @josegonzalez Ensure vector component sources have valid names
- #5035: @nerg4l Fix help flag for logs command
- #5019: @josegonzalez Only rename app domains associated with a global domain

### New Features

- #5064: @josegonzalez Upgrade docker image to ubuntu focal
- #5058: @josegonzalez Add .shellcheckrc
- #5055: @josegonzalez Release dokku for 32-bit Raspbian Bullseye
- #5050: @josegonzalez Set the default memory unit type to megabytes
- #5017: @josegonzalez Add command to clear all proxy configs

### Refactors

- #4921: @josegonzalez Add ability to filter returnable apps

### Documentation

- #5056: @miku86 Fix typo in port management docs
- #5018: @josegonzalez Add warning for setting PORT environment variable

### Other

- #5062: @dependabot[bot] chore(deps): bump django from 3.1.13 to 3.1.14 in /tests/apps/dockerfile-release
- #5053: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 211 to 212 in /tests/apps/php
- #5038: @dependabot[bot] chore(deps): bump flask from 2.0.2 to 2.0.3 in /tests/apps/multi
- #5048: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 210 to 211 in /tests/apps/php
- #5039: @dependabot[bot] chore(deps): bump sinatra from 2.1.0 to 2.2.0 in /tests/apps/ruby
- #5037: @dependabot[bot] chore(deps): bump flask from 2.0.2 to 2.0.3 in /tests/apps/python-flask
- #5036: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 207 to 210 in /tests/apps/php
- #5025: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.7 to 11.0.8 in /tests/apps/java
- #5026: @dependabot[bot] chore(deps): bump werkzeug from 2.0.2 to 2.0.3 in /tests/apps/python-flask
- #5027: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 206 to 207 in /tests/apps/php
- #5021: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 205 to 206 in /tests/apps/php
- #4975: @tcurdt add arm64 to the build

## 0.26.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.8/bootstrap.sh
sudo DOKKU_TAG=v0.26.8 bash bootstrap.sh
```

### Bug Fixes

- #5016: @josegonzalez Properly support the --global flag when detecting the scheduler
- #5015: @josegonzalez Avoid popd errors when dokku is run as root

### New Features

- #5006: @josegonzalez Better go mod support in VSCode Dev Containers

### Documentation

- #5014: @josegonzalez Clarify that all run containers are removed at the end of process execution
- #5010: @josegonzalez Add documentation for ps:restore
- #5009: @josegonzalez Clarify installation documentation

## 0.26.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.7/bootstrap.sh
sudo DOKKU_TAG=v0.26.7 bash bootstrap.sh
```

### Bug Fixes

- #5003: @josegonzalez Respect pre-existing .env files when preparing the herokuish buildenv
- #4950: @emdienn Use exported environment vars during pack build
- #4999: @elhu Purge cache for all apps when calling buildpacks:set-property with --global flag
- #4988: @fomojola Conditionally restart NGINX
- #4922: @josegonzalez Gitignore more built plugin triggers in apps plugin

### New Features

- #4964: @josegonzalez Add log message when running state is false
- #4970: @josegonzalez Log the string error and not bytes when there is an issue updating the cron schedule
- #4924: @josegonzalez Update devcontainer to include aliased go packages
- #4920: @josegonzalez Ensure related go source and vscode plugins are installed in devcontainer

### Documentation

- #4949: @IlyaSemenov docs: update herokuish upgrade instructions
- #4992: @anthonyshew Typo for deploying using image SHA
- #4976: @josegonzalez Update link in header to dokku pro
- #4972: @Dam-Buty Clarify cron:report command
- #4943: @Stormheg Fix typo in registry management documentation
- #4935: @josegonzalez Reword note about env vars in nginx config templates

### Other

- #4995: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 203 to 205 in /tests/apps/php
- #4978: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 201 to 203 in /tests/apps/php
- #4936: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 200 to 201 in /tests/apps/php
- #4937: @dependabot[bot] chore(deps): bump socket.io from 4.3.2 to 4.4.0 in /tests/apps/.websocket.disabled

## 0.26.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.6/bootstrap.sh
sudo DOKKU_TAG=v0.26.6 bash bootstrap.sh
```

### Bug Fixes

- #4919: @nerg4l fix: do not validate global flag as an app name
- #4918: @josegonzalez Use netrc binary to properly release dokku client homebrew formula

## 0.26.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.5/bootstrap.sh
sudo DOKKU_TAG=v0.26.5 bash bootstrap.sh
```

### Bug Fixes

- #4917: @josegonzalez Update golang to fix golang tests
- #4915: @josegonzalez Add support for --global flag to network:set command

### Documentation

- #4911: @josegonzalez Add initial dokku-pro documentation
- #4910: @josegonzalez Fix typo on persistent storage docs

### Tests

- #4916: @josegonzalez Ignore new SC2295 shellcheck warning
- #4906: @josegonzalez Upgrade ci linters

### Other

- #4914: @dependabot[bot] chore(deps): bump jinja2 from 3.0.2 to 3.0.3 in /tests/apps/python-flask

## 0.26.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.4/bootstrap.sh
sudo DOKKU_TAG=v0.26.4 bash bootstrap.sh
```

### Bug Fixes

- #4899: @josegonzalez Ensure we respect quotes and dollar signs in config vars
- #4890: @josegonzalez Drop which in favor of command -v

### Other

- #4897: @josegonzalez Silence errors when verifying the ssl certificate
- #4891: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 199 to 200 in /tests/apps/php

## 0.26.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.3/bootstrap.sh
sudo DOKKU_TAG=v0.26.3 bash bootstrap.sh
```

### Bug Fixes

- #4889: @josegonzalez Skip herokuish version in report output and disable the herokuish builder on armhf architectures

## 0.26.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.2/bootstrap.sh
sudo DOKKU_TAG=v0.26.2 bash bootstrap.sh
```

### Bug Fixes

- #4888: @josegonzalez Ensure installations treat raspbian as similar to debian buster as possible
- #4887: @josegonzalez Ensure we do not add two debian folders in a single armhf package

### New Features

- #4886: @josegonzalez Add created-at time to apps:report output

## 0.26.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.1/bootstrap.sh
sudo DOKKU_TAG=v0.26.1 bash bootstrap.sh
```

### Bug Fixes

- #4884: @josegonzalez Correct recommends entry for bash-completion

### New Features

- #4885: @josegonzalez Add experimental support for arm devices

## 0.26.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.26.0/bootstrap.sh
sudo DOKKU_TAG=v0.26.0 bash bootstrap.sh
```

See the [0.26.0 migration guide](/docs/appendices/0.26.0-migration-guide.md) for more information on migrating to 0.26.0.

### Bug Fixes

- #4882: @josegonzalez Add missing setup/teardown of builder plugin properties
- #4880: @josegonzalez Ensure the null scheduler reports the app as running when in use
- #4871: @josegonzalez Do not error when default Procfile path does not exist when using a custom procfile-path
- #4861: @josegonzalez Add missing clone/rename code for plugins

### New Features

- #4864: @josegonzalez Switch to unauthenticated tap for formula bumping
- #4860: @josegonzalez Add ability to increase the max parallelism when deploying a given process type

### Documentation

- #4883: @josegonzalez Enable vertical scrolling on the version selector
- #4879: @josegonzalez Clarify that the docker-based dokku installation is ready when a certain message appears
- #4863: @josegonzalez Clarify what is necessary for implementing a scheduler plugin

### Other

- #4874: @josegonzalez Upgrade vector log integration to 0.17.x
- #4881: @josegonzalez Drop bindutils as alternative dependency to bind-utils
- #4869: @dependabot[bot] chore(deps): bump socket.io from 4.2.0 to 4.3.0 in /tests/apps/.websocket.disabled
- #4868: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.6 to 11.0.7 in /tests/apps/java
- #4866: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 198 to 199 in /tests/apps/php
- #4862: @josegonzalez Set deploy-source and metadata at deploy time
- #4853: @josegonzalez Remove dangling images
- #4765: @josegonzalez Allow specifying a single process type to restart
- #4859: @josegonzalez Remove deprecated tar plugin
- #4858: @josegonzalez Remove deprecated tags plugin
- #4857: @josegonzalez Implement scheduler management plugin

## 0.25.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.7/bootstrap.sh
sudo DOKKU_TAG=v0.25.7 bash bootstrap.sh
```

### Bug Fixes

- #4855: @josegonzalez Output remote client help when there is no remote host

### New Features

- #4854: @josegonzalez Fix parallel usage for scheduler-docker-local

### Documentation

- #4856: @josegonzalez Add a note to the migration guide regarding using a Procfile for Dockerfile deploys
- #4843: @schmijos Clarify that docker-options are not passed to the launched process but instead to the docker run command

### Other

- #4844: @dependabot[bot] chore(deps): bump werkzeug from 2.0.1 to 2.0.2 in /tests/apps/python-flask

## 0.25.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.6/bootstrap.sh
sudo DOKKU_TAG=v0.25.6 bash bootstrap.sh
```

### Bug Fixes

- #4841: @josegonzalez Ensure pack is run as root user when building apps in docker
- #4836: @josegonzalez Fix custom dockerfile path detection
- #4839: @josegonzalez Choose the correct app when a named remote is specified in the remote ssh client

### New Features

- #4829: @josegonzalez Add ability to schedule process types in parallel
- #4837: @josegonzalez Filter --link and --volume flags during Dockerfile builds

### Documentation

- #4840: @josegonzalez Explain sha256 image digest alternative when reusing docker image tags for git:from-image deployments

### Tests

- #4842: @josegonzalez Set default process list in test cnb buildpacks

### Other

- #4832: @dependabot[bot] chore(deps): bump flask from 2.0.1 to 2.0.2 in /tests/apps/python-flask
- #4833: @dependabot[bot] chore(deps): bump jinja2 from 3.0.1 to 3.0.2 in /tests/apps/python-flask
- #4831: @dependabot[bot] chore(deps): bump flask from 2.0.1 to 2.0.2 in /tests/apps/multi

## 0.25.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.5/bootstrap.sh
sudo DOKKU_TAG=v0.25.5 bash bootstrap.sh
```

### Bug Fixes

- #4787: @josegonzalez Do not require double quotes when issuing dokku run commands
- #4816: @josegonzalez Set the DOKKU_HOST_ROOT on docker container start
- #4810: @josegonzalez Handle udp ports when fetching network config
- #4812: @josegonzalez Silence stderr when fetching a command from the Procfile
- #4800: @josegonzalez Add help2man os package for copyfiles make target to devcontainer
- #4796: @josegonzalez Remove the --restart flag from pre-deploy chown containers

### New Features

- #4809: @josegonzalez Implement storage:ensure-directory command
- #4801: @josegonzalez Expose git-from-archive and git-from-image plugin triggers
- #4785: @josegonzalez Add support for VSCode Dev Containers

### Documentation

- #4819: @stephenheron Fixed typo in tar documentation
- #4824: @dy3l Fix GitLab case
- #4822: @josegonzalez Add a note about using the registry:login command for private image deployments
- #4808: @francipvb Added a comment about Dockerfile deployment
- #4807: @FinnWoelm Docs: Fix instructions for enabling Docker Buildkit
- #4786: @josegonzalez Add missing argument from trigger documentation
- #4780: @adam12 Update source for `dokku-update`

### Tests

- #4828: @josegonzalez Update golang in test apps to latest version
- #4815: @josegonzalez tests: use python3 shebang for shellcheck-to-junit script
- #4814: @josegonzalez Add wget to devcontainer to fix shfmt installation
- #4791: @josegonzalez Fix test running in devcontainer

### Other

- #4813: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 197 to 198 in /tests/apps/php
- #4802: @dependabot[bot] chore(deps): bump django from 3.1.12 to 3.1.13 in /tests/apps/dockerfile-release
- #4784: @josegonzalez Upgrade vector image to 0.16.x

## 0.25.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.4/bootstrap.sh
sudo DOKKU_TAG=v0.25.4 bash bootstrap.sh
```

### Bug Fixes

- #4775: @josegonzalez Add support for url-encoded vector-sink config values …
- #4777: @josegonzalez Set correct version for registry plugin

### Documentation

- #4776: @josegonzalez Clarify valid values for container-type when entering containers

### Other

- #4774: @dependabot[bot] chore(deps): bump sqlparse from 0.4.1 to 0.4.2 in /tests/apps/dockerfile-release

## 0.25.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.3/bootstrap.sh
sudo DOKKU_TAG=v0.25.3 bash bootstrap.sh
```

### Bug Fixes

- #4767: @josegonzalez Output logs when container rename fails and continue on
- #4764: @josegonzalez Reference correct plugin when setting up app-json plugin

### Refactors

- #4741: @josegonzalez Use a Dockerfile to speed up env var injection for herokuish app builds

### Documentation

- #4763: @josegonzalez Remove install doc references to removed web installer

### Other

- #4766: @josegonzalez Capitalize certain log messages for aesthetic reasons

## 0.25.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.2/bootstrap.sh
sudo DOKKU_TAG=v0.25.2 bash bootstrap.sh
```

### Bug Fixes

- #4760: @josegonzalez Add missing rsync to OS dependency list for git:sync command

### New Features

- #4761: @josegonzalez Correct permissions for userns support
- #4742: @ashkulz bootstrap: add support for Debian 11 (bullseye)

### Documentation

- #4747: @erickedji Fix process management references to formation key in app.json

### Other

- #4753: @dependabot[bot] chore(deps): bump socket.io from 4.1.3 to 4.2.0 in /tests/apps/.websocket.disabled
- #4750: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 196 to 197 in /tests/apps/php
- #4758: @ltalirz Fix typo in network docs
- #4748: @trival Remove spare backtick in 0.25.0-migration-guide.md

## 0.25.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.1/bootstrap.sh
sudo DOKKU_TAG=v0.25.1 bash bootstrap.sh
```

### Bug Fixes

- #4736: @josegonzalez Ensure herokuish deploys respects the env vars during the release process

### Documentation

- #4734: @josegonzalez docs: add github sponsorship link to contributing docs

## 0.25.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.25.0/bootstrap.sh
sudo DOKKU_TAG=v0.25.0 bash bootstrap.sh
```

See the [0.25.0 migration guide](/docs/appendices/0.25.0-migration-guide.md) for more information on migrating to 0.25.0.

### Bug Fixes

- #4733: @josegonzalez Force grep to run in quiet mode in domains:add call
- #4732: @josegonzalez Ensure image cleanup does not impact the stack image and refactor container/image cleanup
- #4731: @josegonzalez Respect debconf selections where possible
- #4729: @josegonzalez Correct count check for user-auth trigger
- #4721: @josegonzalez Recursively sync submodules
- #4717: @josegonzalez Silence stderr when checking for ufw on debian systems
- #4716: @josegonzalez Suppress dos2unix stderr output during Dockerfile builds
- #4686: @josegonzalez Ensure repository is bare when calling git:sync
- #4684: @josegonzalez Install gpg-agent in bootstrap script
- #4683: @josegonzalez Strip published port flags when triggering deploy tasks
- #4651: @josegonzalez Do not attempt to retire when there was no pre-existing container
- #4639: @josegonzalez Correct path for azure-vm releases

### New Features

- #4730: @josegonzalez Execute motd at the end of the install
- #4719: @josegonzalez Add support for routing an app to a specified host:port
- #4715: @josegonzalez Switch from xip.io to sslip.io
- #4460: @josegonzalez Implement registry plugin
- #4711: @josegonzalez Enable installing on RPM systems where bind-utils is bindutils
- #4687: @josegonzalez Output message explaining how to remove a deploy lock when a lock is encountered
- #4682: @josegonzalez Properly space report output
- #4502: @josegonzalez Add monorepo support
- #4509: @josegonzalez Add ability to specify initial network
- #4641: @dbazile Add initial support for installing onto Fedora

### Refactors

- #4508: @josegonzalez Add support for the formation key in app.json
- #4507: @josegonzalez Drop support for Ubuntu 16.04

### Documentation

- #4723: @josegonzalez Clarify buildkit instructions
- #4718: @josegonzalez Update link to azure installation on homepage
- #4714: @josegonzalez Swap from freenode to libera.chat
- #4712: @josegonzalez Clarify the shape of the command that should be entered in app.json for a cron task
- #4709: @josegonzalez Add migration note for deprecation of ubuntu 16.04
- #4697: @josegonzalez Specify that run containers use the same image
- #4688: @josegonzalez Add a note on recovering networks
- #4689: @josegonzalez Add a note about wildcards in the installation doc page
- #4680: @josegonzalez Cleanup markdown lint errors
- #4679: @josegonzalez Cleanup markdown lint errors
- #4678: @josegonzalez Cleanup markdown lint errors
- #4677: @josegonzalez Cleanup markdown lint errors
- #4672: @bjab Fix typo in pack builder docs
- #4668: @RealOrangeOne Make example gitlab-ci script a list
- #4673: @eltociear Fix comment typo in dokku binary
- #4661: @dy3l Fix case style
- #4647: @AngCosmin Fixed unable to find version `v1` for official Github Action

### Tests

- #4693: @josegonzalez Add package.lock for test app
- #4685: @josegonzalez Remove ci skip note in PULL_REQUEST_TEMPLATE.md
- #4681: @josegonzalez Ignore duplication warnings in codacy
- #4644: @josegonzalez Update unit test publisher to latest

### Other

- #4726: @josegonzalez Drop web installer in favor of setup via cli
- #4713: @josegonzalez Make heroku-20/focal the default stack for herokuish builds
- #4707: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 195 to 196 in /tests/apps/php
- #4701: @josegonzalez Revamp dokku run command
- #4671: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 193 to 195 in /tests/apps/php
- #4674: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.5 to 11.0.6 in /tests/apps/java
- #4652: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.4 to 11.0.5 in /tests/apps/java
- #4653: @dependabot[bot] chore(deps): bump maven-dependency-plugin from 3.1.2 to 3.2.0 in /tests/apps/java
- #4648: @dependabot[bot] chore(deps): bump django from 3.1.9 to 3.1.12 in /tests/apps/dockerfile-release
- #4645: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.3 to 11.0.4 in /tests/apps/java
- #4642: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 192 to 193 in /tests/apps/php

## 0.24.10

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.10/bootstrap.sh
sudo DOKKU_TAG=v0.24.10 bash bootstrap.sh
```

### Bug Fixes

- #4638: @josegonzalez Schedule a retire as early as possible

### Documentation

- #4635: @hiepxanh Add buildkit cache example to Dockerfile docs
- #4632: @scflode Fix typo in docs for GitHub Actions

### Other

- #4637: @dependabot[bot] chore(deps): bump django from 3.1.8 to 3.1.9 in /tests/apps/dockerfile-release

## 0.24.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.9/bootstrap.sh
sudo DOKKU_TAG=v0.24.9 bash bootstrap.sh
```

### Bug Fixes

- #4617: @josegonzalez Actually use the null buildpack for the sample python app
- #4616: @josegonzalez Update azure-vm file paths to handled azure renames

### New Features

- #4629: @josegonzalez Upgrade dokku docker image to latest bionic release

### Documentation

- #4622: @allanitis Update nginx logging configuration example to better support AWS Cloudwatch

### Other

- #4627: @Tarow Respect custom stack when using cloud native builder
- #4619: @dependabot[bot] chore(deps): bump flask from 2.0.0 to 2.0.1 in /tests/apps/python-flask
- #4628: @dependabot[bot] chore(deps): bump monolog/monolog from 1.26.0 to 1.26.1 in /tests/apps/php
- #4618: @dependabot[bot] chore(deps): bump jetty-servlet from 11.0.2 to 11.0.3 in /tests/apps/java

## 0.24.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.8/bootstrap.sh
sudo DOKKU_TAG=v0.24.8 bash bootstrap.sh
```

### Bug Fixes

- #4615: @josegonzalez Remove empty plugin directories during upgrade
- #4613: @josegonzalez Correct failing repo test
- #4612: @josegonzalez fix: always retire deployment task containers

### Documentation

- #4607: @serixscorpio Update link to dokku on Azure deployment page
- #4583: @josegonzalez Set correct redirect for installation

### Other

- #4610: @dependabot[bot] chore(deps): bump jinja2 from 2.11.3 to 3.0.1 in /tests/apps/python-flask
- #4614: @dependabot[bot] chore(deps): bump flask from 2.0.0 to 2.0.1 in /tests/apps/multi
- #4611: @dependabot[bot] chore(deps): bump thin from 1.8.0 to 1.8.1 in /tests/apps/ruby
- #4609: @dependabot[bot] chore(deps): bump socket.io from 4.0.2 to 4.1.2 in /tests/apps/.websocket.disabled
- #4608: @dependabot[bot] chore(deps): bump werkzeug from 1.0.1 to 2.0.1 in /tests/apps/python-flask
- #4600: @dependabot[bot] chore(deps): bump flask from 1.1.2 to 2.0.0 in /tests/apps/multi
- #4598: @dependabot[bot] chore(deps): bump flask from 1.1.2 to 2.0.0 in /tests/apps/python-flask
- #4592: @dependabot[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 191 to 192 in /tests/apps/php
- #4581: @dependabot-preview[bot] Upgrade to GitHub-native Dependabot

## 0.24.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.7/bootstrap.sh
sudo DOKKU_TAG=v0.24.7 bash bootstrap.sh
```

### Bug Fixes

- #4574: @Cellane Fix alternate-tags content & escaping

### Other

- #4575: @Cellane Exclude additional ShellCheck tests

## 0.24.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.6/bootstrap.sh
sudo DOKKU_TAG=v0.24.6 bash bootstrap.sh
```

### Bug Fixes

- #4493: @Cellane Ensure alternate-tags is properly injected for git:from-image deploys
- #4563: @Akirtovskis Tough netrc file when setting git:auth entries
- #4566: @jasiek Normalize Dockerfile line terminators to handle issues in port extraction
- #4567: @josegonzalez Ensure plugin:update updates all plugins when no plugin is specified
- #4568: @josegonzalez Do not insert log max-size when log-driver is set at daemon-level
- #4554: @josegonzalez Ensure deployment task containers get associated to internal networks

### New Features

- #4557: @josegonzalez Add bash-completion to debian package recommends
- #4484: @lunswor Bumps vector image version to 0.12.x

### Other

- #4569: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 190 to 191 in /tests/apps/php

## 0.24.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.5/bootstrap.sh
sudo DOKKU_TAG=v0.24.5 bash bootstrap.sh
```

### Bug Fixes

- #4552: @josegonzalez Scope return 301 in nginx config to allow proper letsencrypt usage

### Documentation

- #4546: @benwinding Add bad proxy ports to troubleshooting doc

### Other

- #4547: @dependabot[bot] chore(deps): bump django from 3.1.6 to 3.1.8 in /tests/apps/dockerfile-release

## 0.24.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.4/bootstrap.sh
sudo DOKKU_TAG=v0.24.4 bash bootstrap.sh
```

### Bug Fixes

- #4526: @josegonzalez Do not cut off builder arguments that have a 'v-' substring
- #4523: @josegonzalez Ignore set pipefail errors when DOKKU_SHELL is set to sh
- #4516: @josegonzalez Properly handle letsencrypt certs in certs:report output
- #4510: @josegonzalez Reformat existing buildpacks files

### New Features

- #4525: @josegonzalez Update error for git:from- commands when the artifact is already synced
- #4524: @josegonzalez Allow skipping entrypoint detection if entrypoint is tini

### Documentation

- #4531: @elamje Update config command to config:show
- #4528: @grantjenks Fix typo in persistent storage docs
- #4530: @Tobbe deployment docs: fix letsencrypt plugin name
- #4517: @illgitthat Update README with correct link to docs
- #4513: @josegonzalez Add a note on ssl and letsencrypt usage to the setup docs
- #4511: @josegonzalez Document removal of nginx site-enabled files for first time installers
- #4506: @josegonzalez Add full example for custom nginx log format
- #4504: @josegonzalez Clarify permissions on persistent storage paths
- #4503: @josegonzalez Drop dead newsletter link

### Other

- #4540: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.5.1 to 1.5.2 in /tests/apps/gogrpc
- #4535: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.4 to 20.1.0 in /tests/apps/multi
- #4536: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 11.0.1 to 11.0.2 in /tests/apps/java
- #4537: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.4 to 20.1.0 in /tests/apps/python-flask
- #4527: @Cellane Remove all traces of dokku-update

## 0.24.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.3/bootstrap.sh
sudo DOKKU_TAG=v0.24.3 bash bootstrap.sh
```

### Bug Fixes

- #4496: @josegonzalez Ensure existing apps are initialized before modifying with code

### Documentation

- #4492: @josegonzalez Set better header colors for dark mode
- #4481: @bfontaine docs: fix a broken link

### Other

- #4495: @dependabot[bot] chore(deps): bump djangorestframework from 3.11.0 to 3.11.2 in /tests/apps/dockerfile-release
- #4494: @dependabot[bot] chore(deps): bump django from 3.0.7 to 3.1.6 in /tests/apps/dockerfile-release
- #4491: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.4.3 to 1.5.1 in /tests/apps/gogrpc

## 0.24.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.2/bootstrap.sh
sudo DOKKU_TAG=v0.24.2 bash bootstrap.sh
```

### Bug Fixes

- #4473: @josegonzalez Add the correct log mount for app logs

### Other

- #4465: @Akirtovskis Add git:unlock command
- #4470: @dependabot-preview[bot] chore(deps): bump socket.io from 3.1.2 to 4.0.0 in /tests/apps/.websocket.disabled
- #4462: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 189 to 190 in /tests/apps/php

## 0.24.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.1/bootstrap.sh
sudo DOKKU_TAG=v0.24.1 bash bootstrap.sh
```

### Bug Fixes

- #4454: @josegonzalez Use proper title for azure releases and fix tmp dir creation

### Documentation

- #4461: @josegonzalez Add dark mode support to documentation site
- #4457: @Cellane Rename 0.24.0 migration guide
- #4456: @josegonzalez Fix doc link and add 0.24.0 appendix to migration guides

## 0.24.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.24.0/bootstrap.sh
sudo DOKKU_TAG=v0.24.0 bash bootstrap.sh
```

See the [0.24.0 migration guide](/docs/appendices/0.24.0-migration-guide.md) for more information on migrating to 0.24.0.

### Bug Fixes

- #4449: @josegonzalez Gitignore trigger symlink
- #4447: @josegonzalez Checkout code to ensure the bump-azure script is available

### New Features

- #4453: @josegonzalez Simplify tar and zip deploys via git:from-archive
- #4450: @josegonzalez Simplify docker image deploys via git:from-image
- #4379: @josegonzalez Allow builders to be detected based on repository contents
- #4425: @josegonzalez Implement heroku's postdeploy deployment task
- #4424: @josegonzalez Implement git:auth command
- #4419: @josegonzalez Add parallelism to certain proxy commands

### Refactors

- #4374: @josegonzalez Change exit code when app does not exist

### Documentation

- #4451: @josegonzalez Update links to builder documentation to avoid extra rewrite
- #4448: @josegonzalez Add documentation for git push to dokku-in-docker

## 0.23.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.9/bootstrap.sh
sudo DOKKU_TAG=v0.23.9 bash bootstrap.sh
```

### Refactors

- #4445: @josegonzalez Bump azure template and formula directly on release

### Documentation

- #4444: @josegonzalez Uuse updated links for documentation
- #4439: @RyukerLiu View Doc redirect not working. Change to use direct link

## 0.23.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.8/bootstrap.sh
sudo DOKKU_TAG=v0.23.8 bash bootstrap.sh
```

### Bug Fixes

- #4437: @josegonzalez Switch to using GIT_DIR environment variable to fix Centos 7 support
- #4436: @josegonzalez Properly handle directory change when cleaning .git directory

### New Features

- #4428: @josegonzalez Bump azure ARM quickstart template on release

### Documentation

- #4435: @josegonzalez Change page title based on current page
- #4427: @josegonzalez Change process management doc references to make more sense

### Other

- #4438: @josegonzalez Split out nginx tests further to decrease overall CI runtime
- #4430: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 11.0.0 to 11.0.1 in /tests/apps/java

## 0.23.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.7/bootstrap.sh
sudo DOKKU_TAG=v0.23.7 bash bootstrap.sh
```

### Bug Fixes

- #4421: @josegonzalez Keep the git directory for worktree-enabled installations

### New Features

- #4420: @josegonzalez Add ability to specify X-Forwarded-Ssl header for proxied requests

### Documentation

- #4422: @josegonzalez Add warning regarding shallow clone pushes
- #4417: @andrewk17 Correct vector sink example command
- #4414: @josegonzalez Use correct html for offsite digitalocean link
- #4413: @josegonzalez Fix SSL documentation link in troubleshooting docs

### Other

- #4423: @josegonzalez Drop unused sigil packaging code
- #4418: @josegonzalez Drop unused skip-restart flag for proxy:disable

## 0.23.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.6/bootstrap.sh
sudo DOKKU_TAG=v0.23.6 bash bootstrap.sh
```

### Bug Fixes

- #4412: @markuspoerschke Fix generation of crontab

### Documentation

- #4411: @ltalirz Replace nginx:build-config => proxy:build-config

## 0.23.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.5/bootstrap.sh
sudo DOKKU_TAG=v0.23.5 bash bootstrap.sh
```

### Bug Fixes

- #4406: @znz Fix typo in error message

### New Features

- #4404: @josegonzalez Add ability to trigger release via github actions

### Tests

- #4403: @josegonzalez Llint files during CI

## 0.23.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.4/bootstrap.sh
sudo DOKKU_TAG=v0.23.4 bash bootstrap.sh
```

### Bug Fixes

- #4402: @josegonzalez fix: correctly handle is-deployed check
- #4399: @josegonzalez Drop extra log output in cron plugin

### Documentation

- #4400: @solvethex Add tail option

## 0.23.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.3/bootstrap.sh
sudo DOKKU_TAG=v0.23.3 bash bootstrap.sh
```

### Bug Fixes

- #4397: @josegonzalez Correctly handle environment variables in deployment tasks for Cloud Native Buildpacks
- #4394: @josegonzalez Swap order of arguments on config-get call

### New Features

- #4395: @josegonzalez Add environment variable support to CNB-based containers

### Refactors

- #4393: @josegonzalez Use docker-image-labeler in cnb builder-build trigger

### Documentation

- #4396: @nerg4l Invalid link to Herokuish Buildpack Deployment in Cloud Native Buildpacks

### Tests

- #4390: @josegonzalez Run tests faster by not cloning the buildpack each time

### Other

- #4389: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 188 to 189 in /tests/apps/php

## 0.23.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.2/bootstrap.sh
sudo DOKKU_TAG=v0.23.2 bash bootstrap.sh
```

### Bug Fixes

- #4388: @josegonzalez Do not inject max-size option when not using local or json-file log-drivers
- #4386: @josegonzalez Update to docker-image-labeler that handles in-use images

### New Features

- #4387: @josegonzalez Only warn if the vector container is stopped when fetching logs
- #4372: @josegonzalez Add ability to clear an individual resource
- #4384: @josegonzalez Add support for injected cron entries from external plugins

### Refactors

- #4373: @josegonzalez Do not attempt to extract Procfile in ps:scale

### Documentation

- #4377: @josegonzalez Add note about the dokku user cron being overwritten by Dokku

### Other

- #3757: @pickettd Add provision line to Windows Vagrant box for dokku-installer

## 0.23.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.1/bootstrap.sh
sudo DOKKU_TAG=v0.23.1 bash bootstrap.sh
```

### Bug Fixes

- #4368: @josegonzalez Always report resources

### New Features

- #4369: @josegonzalez Allow formatting :report command output as json

### Documentation

- #4367: @josegonzalez Update deeplink to digitalocean marketplace image on homepage
- #4366: @josegonzalez Update Digitalocean docs
- #4363: @josegonzalez Refer to the monitored slack and github discussions channels in the issue template
- #4359: @josegonzalez Fix command call for set-property
- #4358: @Cellane Update header on cron documentation
- #4357: @Cellane Fix spelling in nginx documentation

### Other

- #4365: @dependabot-preview[bot] chore(deps): bump jinja2 from 2.11.2 to 2.11.3 in /tests/apps/python-flask

## 0.23.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.23.0/bootstrap.sh
sudo DOKKU_TAG=v0.23.0 bash bootstrap.sh
```

See the [0.23.0 migration guide](/docs/appendices/0.23.0-migration-guide.md) for more information on migrating to 0.23.0.

### Bug Fixes

- #4356: @josegonzalez Do not retag images unnecessarily
- #4355: @josegonzalez Allow underscores in vector schemes
- #4350: @josegonzalez Add missing trigger to events plugin
- #4348: @josegonzalez Correct app-specific shell handling
- #4333: @josegonzalez Drop tmpdir environment variables when not running as dokku user

### New Features

- #4336: @josegonzalez Add ability to manage stacks on an app or global level …
- #4354: @josegonzalez Log all triggers called by golang in trace output
- #4300: @AubreyHewes allow disabling hsts globally and explicitly enable per app
- #4337: @josegonzalez Add logrotation to container log files
- #4318: @josegonzalez Add ability to set client max body size via nginx:set
- #4343: @josegonzalez feat: add initial scheduled task implementation
- #4297: @josegonzalez Add support for cloning/syncing from a remote repository
- #4340: @bjornpost Allow configuring x-forwarded-* proxy headers via nginx:set

### Refactors

- #4349: @josegonzalez Remove need for internal dokku calls

### Documentation

- #4347: @fomojola Add post-deploy webhook to list of community plugins
- #4342: @AubreyHewes Point to current testing docs
- #4341: @josegonzalez Add testing link to contributing.md

### Tests

- #4352: @josegonzalez Add a test for application renames
- #4351: @josegonzalez Set hostname for CI runs
- #4322: @josegonzalez Switch to Github Actions for CI

### Other

- #4353: @josegonzalez Drop unused flag introduced by logs max-size feature

## 0.22.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.9/bootstrap.sh
sudo DOKKU_TAG=v0.22.9 bash bootstrap.sh
```

### Bug Fixes

- #4334: @josegonzalez allow git pushes to apps that already exist but have old names
- #4335: @josegonzalez Add error checking to plugin:install and plugin:update
- #4338: @josegonzalez Strip trailing slashes in hostname from web installer
- #4332: @josegonzalez Correct aws release check in release-plugin script
- #4311: @nisseknudsen Allow named volume mounts in regex
- #4320: @josegonzalez Hardcode cnb workdir to /workspace

### New Features

- #4321: @josegonzalez Add git version to output

### Refactors

- #4329: @josegonzalez Standardize apt-get usage

### Documentation

- #4323: @stianlik Fix typo in nginx documentation

### Tests

- #4331: @josegonzalez Switch to upstream bats-core
- #4330: @josegonzalez Switch to using uuidgen for unique app names

### Other

- #4325: @WaviestBalloon Updated bootstrap.sh to not show when $DOKKU_TAG equals nothing
- #4324: @dependabot-preview[bot] chore(deps): bump socket.io from 3.0.5 to 3.1.0 in /tests/apps/.websocket.disabled
- #4319: @josegonzalez Update ruby dependencies in test app
- #4312: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 187 to 188 in /tests/apps/php

## 0.22.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.8/bootstrap.sh
sudo DOKKU_TAG=v0.22.8 bash bootstrap.sh
```

### Bug Fixes

- #4309: @josegonzalez Correct issue where verifying an app name would bail early

### Documentation

- #4307: @josegonzalez Specify that the dokku logo is for non-commercial use

## 0.22.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.7/bootstrap.sh
sudo DOKKU_TAG=v0.22.7 bash bootstrap.sh
```

### Bug Fixes

- #4301: @josegonzalez Ensure vector container starts correctly

## 0.22.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.6/bootstrap.sh
sudo DOKKU_TAG=v0.22.6 bash bootstrap.sh
```

### Bug Fixes

- #4295: @josegonzalez Update ps subcommands and triggers

### New Features

- #4286: @josegonzalez Add support for templated CHECKS files
- #4294: @josegonzalez Enhance ssh client logging output
- #4291: @josegonzalez Add log aggregation support via Vector
- #4288: @josegonzalez Add the pid of the dokku process to event logs
- #4289: @josegonzalez Clean precheck tmp file on exit

### Refactors

- #4287: @josegonzalez Refactor parallelized goroutines to use error groups

### Documentation

- #4292: @thomasfedb Update docs to note support for Ubuntu 20.04
- #4293: @ltalirz Fix path in persistent storage docs

### Other

- #4290: @josegonzalez Add support for debug logging plugin trigger stderr and stdout

## 0.22.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.5/bootstrap.sh
sudo DOKKU_TAG=v0.22.5 bash bootstrap.sh
```

### Bug Fixes

- #4279: @josegonzalez Allow vmware-based vm to work on big sur

### Refactors

- #4282: @josegonzalez Cleanup brew-bump integration
- #4280: @josegonzalez Parallelize report and scheduler retrieval

### Documentation

- #4285: @josegonzalez Reference official gitlab-ci integration
- #4284: @josegonzalez Drop old doc link to gitlab ci docs
- #4283: @josegonzalez Add CI documentation section for Github Actions and Gitlab
- #4281: @josegonzalez Add forum link to documentation

## 0.22.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.4/bootstrap.sh
sudo DOKKU_TAG=v0.22.4 bash bootstrap.sh
```

### Bug Fixes

- #4274: @josegonzalez Use correct warning message for deprecated code

### New Features

- #4273: @josegonzalez Upgrade to golang 1.15

### Refactors

- #4275: @josegonzalez Add calls to verify app name in subcommands

### Documentation

- #4272: @josegonzalez Correct help output for ssh-keys command

### Tests

- #4276: @josegonzalez Upgrade version of plugn used in tests

## 0.22.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.3/bootstrap.sh
sudo DOKKU_TAG=v0.22.3 bash bootstrap.sh
```

### Bug Fixes

- #4268: @josegonzalez Properly parse flags for logs command
- #4264: @josegonzalez Correct argument handling when setting the `--app` flag
- #4252: @magikid Allow symbolic links for certificate and key files

### New Features

- #4270: @josegonzalez Allow renaming old applications to new format
- #4261: @josegonzalez Add remove by fingerprint and json format output to ssh-keys plugin
- #4262: @josegonzalez Improve ps:restore logging
- #4263: @josegonzalez Bump the dokku client formula on release

### Documentation

- #4253: @guettli Highlight the default build method used by Dokku
- #4250: @rlnd1 Update upgrading.md
- #4249: @guettli Fix typo in zero downtime docs
- #4247: @josegonzalez Clarify the domain name setting in the docs

### Tests

- #4269: @josegonzalez Rename duplicate test
- #4266: @josegonzalez Update junit test files when a bats retry is successful
- #4265: @josegonzalez Retry failing and skipped tests once

## 0.22.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.2/bootstrap.sh
sudo DOKKU_TAG=v0.22.2 bash bootstrap.sh
```

### Bug Fixes

- #4243: @josegonzalez Do not delete app when the app name is invalid

### New Features

- #4141: @josegonzalez Always initialize git repository

### Other

- #4244: @dependabot-preview[bot] chore(deps): bump monolog/monolog from 1.25.5 to 1.26.0 in /tests/apps/php

## 0.22.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.1/bootstrap.sh
sudo DOKKU_TAG=v0.22.1 bash bootstrap.sh
```

### Bug Fixes

- #4238: @josegonzalez Ensure dead files are created for docker object retirement
- #4239: @josegonzalez Ensure all byte output is trimmed of whitespace
- #4228: @Cellane Fix tags:deploy command for images that contain ONBUILD directive
- #4233: @josegonzalez Properly parse releease command when there is an entrypoint
- #4215: @josegonzalez Implement missing cleanup routines
- #4212: @josegonzalez Cleanup docker options during post-delete
- #4211: @ml-milan-vit Make the dokku-update command compatible with Dokku 0.22+

### New Features

- #4242: @josegonzalez Remove reference to 'whitelist'
- #4220: @josegonzalez Update plugn from 0.5.0 to 0.5.1
- #4241: @josegonzalez Properly handle stdout when capturing plugn output
- #4237: @josegonzalez Release dokku-update 0.2.0
- #4225: @znz Accept first pushed branch as deploy-branch

### Documentation

- #4236: @josegonzalez Remove note regarding not having an official client
- #4234: @josegonzalez Switch to bats --filter for running a single test
- #4222: @leopolicastro Fix typo in deployment tasks documentation
- #4221: @srr013 Updating readme for clarity on git push step
- #4214: @josegonzalez Expand backup and restore documentation
- #4213: @josegonzalez Enhance the 'plugin' plugin documentation

### Tests

- #4218: @josegonzalez Enable compilation cache

### Other

- #4230: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 186 to 187 in /tests/apps/php
- #4223: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.35.v20201120 to 11.0.0 in /tests/apps/java
- #4224: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 185 to 186 in /tests/apps/php

## 0.22.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.22.0/bootstrap.sh
sudo DOKKU_TAG=v0.22.0 bash bootstrap.sh
```

See the [0.22.0 migration guide](/docs/appendices/0.22.0-migration-guide.md) for more information on migrating to 0.22.0.

### Bug Fixes

- #4204: @josegonzalez Ensure the image is not an empty string
- #4198: @josegonzalez Reference extracted Procfile
- #4194: @josegonzalez Drop appName check in apps:report
- #4183: @josegonzalez Embed pb.UnimplementedGreeterServer to avoid linting issues
- #4182: @josegonzalez Upgrade herokuish to fix nodejs tests
- #4173: @karimsan Add build-essential to Vagrant provision
- #4181: @josegonzalez Conditionally mount the dokku-arch folder if it exists
- #4130: @josegonzalez Clear proxy configs on boot
- #4131: @josegonzalez Bump minimum docker version
- #4123: @fomojola Support for expected CHECKS text with special characters
- #4115: @josegonzalez Add missing labels to built images
- #4116: @Schlepptop Ensure config:clear an be called

### New Features

- #4209: @josegonzalez Add experimental support for Cloud Native Buildpacks (CNB)
- #4210: @josegonzalez Add migration guide link to release notes
- #4203: @josegonzalez Cleanup log output for failure case
- #4208: @ankane Add ability to change the access log format
- #4202: @josegonzalez Schedule related images for cleanup when retiring containers
- #4197: @josegonzalez Retire intermediate containers after use
- #4128: @fomojola Added the container index to the network-compute-ports trigger
- #4191: @josegonzalez Create codeql-analysis.yml
- #4139: @Yihao-G Allow controlling Nginx proxy-buffer-size, proxy-buffering, proxy-buffers, proxy-busy-buffers-size
- #4156: @ltalirz When `cert:add` remove previous cert before copying the new cert
- #4129: @josegonzalez Prohibit non-dns names for apps and process types
- #4125: @josegonzalez Allow customizing the various nginx templates
- #4121: @josegonzalez Add ability to disable custom ninx.conf.sigil extraction

### Refactors

- #4160: @nerg4l Rewrite logs plugin in Go
- #4149: @josegonzalez Rewrite ps plugin in golang
- #4080: @hugopeixoto Stop using VHOST when listing app domains and urls
- #4117: @josegonzalez Rewrite app-json plugin in golang
- #4113: @josegonzalez Drop herokuish release code

### Documentation

- #4196: @josegonzalez Correctly doc apps:report output
- #4195: @luizpicolo Fix whitespace in process-management docs
- #4184: @badsyntax Add note regarding using plugin triggers instead of sourcing functions
- #4188: @fomojola Added the autosync community plugin
- #4187: @nahtnam Add `-p` flag to "Run on External Volume" tutorial
- #4186: @badsyntax Add dokku-discourse to community plugins list
- #4170: @chrisjsimpson Add note on how to enable buildkit usage
- #4168: @josegonzalez Revert "The default branch for ruby-getting-started is 'main', not 'master"
- #4167: @nateww The default branch for ruby-getting-started is 'main', not 'master
- #4135: @znz Fix broken table
- #4140: @swrobel Note Ubuntu 20.04 support in README
- #4136: @hugopeixoto Update push command for sample app in docs
- #4124: @josegonzalez Note that docker options require app rebuilds
- #4098: @carlosgeos Add a note on how nginx handles load balancing
- #4111: @josegonzalez Add large version of dokku image
- #4100: @turicas Fix markdown syntax in nginx docs

### Other

- #4201: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.34.v20201102 to 9.4.35.v20201120 in /tests/apps/java
- #4200: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 183 to 185 in /tests/apps/php
- #4189: @dependabot-preview[bot] chore(deps): bump thin from 1.7.2 to 1.8.0 in /tests/apps/ruby
- #4175: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.33.v20201020 to 9.4.34.v20201102 in /tests/apps/java
- #4172: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.4.2 to 1.4.3 in /tests/apps/gogrpc
- #4185: @dependabot-preview[bot] chore(deps): bump socket.io from 2.3.0 to 3.0.1 in /tests/apps/.websocket.disabled
- #4190: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 182 to 183 in /tests/apps/php
- #4165: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.31.v20200723 to 9.4.33.v20201020 in /tests/apps/java
- #4153: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 181 to 182 in /tests/apps/php
- #4144: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 180 to 181 in /tests/apps/php
- #4137: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 179 to 180 in /tests/apps/php
- #4118: @dependabot[bot] chore(deps): bump django from 3.0.2 to 3.0.7 in /tests/apps/dockerfile-release
- #4103: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 178 to 179 in /tests/apps/php
- #4091: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.30.v20200611 to 9.4.31.v20200723 in /tests/apps/java

## 0.21.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.21.4/bootstrap.sh
sudo DOKKU_TAG=v0.21.4 bash bootstrap.sh
```

### Bug Fixes

- #4092: @Yihao-G Fix nginx proxy-read-timeout not set for HTTPS
- #4095: @GennadySpb Fix application removal during uninstallation

### New Features

- #4097: @josegonzalez Update herokuish

### Documentation

- #4096: @josegonzalez Clarify that special config variables are not exposed to applications
- #4007: @turicas Clarify nginx.conf.sigil path in image when deploying non-buildpack apps
- #4078: @gurpreetatwal Add more details to `nginx-dokku-template-source` trigger
- #4090: @ankane Official plugins no longer in beta
- #4085: @josegonzalez Set warning on resource type as an actual warning

### Other

- #4082: @dependabot-preview[bot] chore(deps): bump monolog/monolog from 1.25.4 to 1.25.5 in /tests/apps/php

## 0.21.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.21.3/bootstrap.sh
sudo DOKKU_TAG=v0.21.3 bash bootstrap.sh
```

### Bug Fixes

- #4077: @Schlepptop Fix config_all bug introduced in 0.21.2
- #4074: @josegonzalez Force set all plugin permissions on plugin:install/update

### Documentation

- #4073: @josegonzalez Document the official shell client

## 0.21.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.21.2/bootstrap.sh
sudo DOKKU_TAG=v0.21.2 bash bootstrap.sh
```

### Bug Fixes

- #4072: @Schlepptop Fix deprecation warning in config_all

### New Features

- #4061: @josegonzalez Drop go sum and mod files from releases

### Refactors

- #4064: @hugopeixoto Use *_PATH consistently

### Documentation

- #4069: @josegonzalez Scheduler plugins are no longer beta
- #4068: @josegonzalez Official plugins are no longer in beta
- #4066: @ltalirz Add ansible as installation route
- #4063: @josegonzalez Clarify why we stop/rebuild apps during upgrade
- #4040: @fonsp Added link to the buildpack plugin docs
- #4062: @hugopeixoto Rewrite upgrade instructions

## 0.21.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.21.1/bootstrap.sh
sudo DOKKU_TAG=v0.21.1 bash bootstrap.sh
```

### Documentation

- #4060: @josegonzalez Add warning about the 0.21.0 release

## 0.21.0

> [!WARNING]
> Release is broken and will be pulled from upstream. Please use a newer version.

### Bug Fixes

- #4058: @hugopeixoto Ensure web installer creates files with correct permissions
- #4055: @hugopeixoto Delete dokkurc recursively during uninstall
- #4057: @hugopeixoto Install sudo when installing from source
- #4045: @josegonzalez Filter gpus instead of nvidia-gpus from resource arguments
- #4029: @josegonzalez Filter args _after_ docker-args-process-deploy
- #4026: @josegonzalez Filter resource args from deploy tasks
- #4022: @josegonzalez Do not allow slashes in app names
- #4020: @josegonzalez Properly handle multiple containers in ps:inspect
- #3989: @josegonzalez Correct entering running containers
- #3977: @josegonzalez Set default port for all run commands
- #3969: @josegonzalez Do not logrotate all services files
- #3964: @josegonzalez Remove all --force-yes usage throughout the codebase
- #3955: @benwh Fix missing 502 error page
- #3953: @josegonzalez Use correct function name for cmd-tar-in and update migration guide

### New Features

- #4041: @rvanlaar feat: Add download option to the certs plugin
- #4043: @josegonzalez Allow controlling nginx proxy-read-timeout
- #4038: @josegonzalez Create proxy:build-config command
- #4021: @josegonzalez Depend on python3 binary for CentOS 8 support
- #4004: @josegonzalez Add support for moby-engine
- #3967: @josegonzalez Add Ubuntu 20.04 support
- #3988: @josegonzalez Upgrade plugn to 0.5.0
- #3987: @josegonzalez Upgrade sigil to 0.6.0
- #3986: @josegonzalez Upgrade sshcommand to 0.11.0
- #3985: @josegonzalez Upgrade go-procfile-util to 0.8.2
- #3982: @josegonzalez Allow apps named tls
- #3979: @josegonzalez Upgrade herokuish
- #3971: @josegonzalez feat: allow users to customize the source of the dokku.conf nginx template
- #3966: @josegonzalez Move domain manipulation into triggers
- #3965: @josegonzalez Drop dokku references in logging output
- #3954: @josegonzalez feat: upgrade herokuish to 0.5.12
- #3940: @josegonzalez Expose last updated time in git:report
- #3939: @josegonzalez Add support for outputting the last visited time

### Refactors

- #4035: @josegonzalez Switch to go mod
- #4008: @josegonzalez Standardize golang command code

### Documentation

- #4056: @swrobel Remove invalid help entry for dokku ps commmand
- #4039: @josegonzalez Break out bc-break and refactors in changelog
- #4025: @alexjj Switch AUR helper to yay
- #4019: @tdak Added one possible solution to an error
- #4014: @rvanlaar Update dreamhost cloudinit script
- #4003: @josegonzalez Add dokku.ai asset
- #3999: @DavidLemayian Update URL for less than 1gb memory in bootstrap.sh [ci skip]
- #3998: @josegonzalez Document the #dokku channel on slack
- #3996: @josegonzalez Clarify network aliases and add section on tld management
- #3980: @josegonzalez Clarify that the web installer is not supported in docker-based installs
- #3970: @josegonzalez Clarify the 'see the docs' internal links
- #3968: @josegonzalez Document access.conf issue
- #3957: @swrobel Add official registry plugin
- #3942: @scowalt Fix grammar in environment variables documentation

### Tests

- #4046: @rvanlaar Make `make test` pass on linting
- #4037: @josegonzalez Try to output oomkill information
- #4036: @josegonzalez Store the deb and rpm artifacts
- #4034: @josegonzalez Teardown apps and containers in global teardown
- #4031: @josegonzalez Delete old apps and ensure the test helper is quieter
- #4030: @josegonzalez Update circleci workflow
- #3947: @jayjun Scope init tests to container processes only

### Other

- #4051: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 177 to 178 in /tests/apps/php
- #4028: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 176 to 177 in /tests/apps/php
- #4016: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.29.v20200521 to 9.4.30.v20200611 in /tests/apps/java
- #4006: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 174 to 176 in /tests/apps/php
- #4001: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.28.v20200408 to 9.4.29.v20200521 in /tests/apps/java
- #4002: @dependabot-preview[bot] chore(deps): bump monolog/monolog from 1.25.3 to 1.25.4 in /tests/apps/php
- #3993: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.4.1 to 1.4.2 in /tests/apps/gogrpc
- #3962: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.4.0 to 1.4.1 in /tests/apps/gogrpc
- #3959: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 173 to 174 in /tests/apps/php
- #3950: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.29.0 to 1.29.1 in /tests/apps/gogrpc
- #3946: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.28.1 to 1.29.0 in /tests/apps/gogrpc

## 0.20.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.20.4/bootstrap.sh
sudo DOKKU_TAG=v0.20.4 bash bootstrap.sh
```

### New Features

- #3936: @josegonzalez Enable limiting and reserving gpu resources

### Documentation

- #3937: @josegonzalez Add minor documentation for the kubernetes and nomad schedulers

### Other

- #3935: @dependabot-preview[bot] chore(deps): bump jinja2 from 2.11.1 to 2.11.2 in /tests/apps/python-flask
- #3934: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.3.5 to 1.4.0 in /tests/apps/gogrpc
- #3933: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.27.v20200227 to 9.4.28.v20200408 in /tests/apps/java

## 0.20.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.20.3/bootstrap.sh
sudo DOKKU_TAG=v0.20.3 bash bootstrap.sh
```

### New Features

- #3926: @josegonzalez Add proper support for various buildpack urls

### Other

- #3928: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.28.0 to 1.28.1 in /tests/apps/gogrpc
- #3925: @dependabot-preview[bot] chore(deps): bump flask from 1.1.1 to 1.1.2 in /tests/apps/python-flask
- #3924: @dependabot-preview[bot] chore(deps): bump flask from 1.1.1 to 1.1.2 in /tests/apps/multi

## 0.20.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.20.2/bootstrap.sh
sudo DOKKU_TAG=v0.20.2 bash bootstrap.sh
```

### Bug Fixes

- #3921: @josegonzalez Correct container_type handling when entering containers
- #3919: @josegonzalez Fix bug with restarting containers not being routed to because of changing IP addresses

### New Features

- #3920: @josegonzalez Add the ability to list ssh keys for a specific user

## 0.20.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.20.1/bootstrap.sh
sudo DOKKU_TAG=v0.20.1 bash bootstrap.sh
```

### Bug Fixes

- #3916: @josegonzalez Change error exit to warning when no apps exist

### New Features

- #3918: @josegonzalez Upgrade herokuish to 0.5.11
- #3915: @josegonzalez Add ability to check if a plugin has been installed
- #3914: @josegonzalez Add ability to change or disable the access/error log path
- #3913: @josegonzalez Upgrade herokuish

### Documentation

- #3907: @josegonzalez Add sponsoring link to issue template
- #3904: @jazzzz Update dokku-apt entry
- #3902: @josegonzalez Remove extra commas from network docs

### Other

- #3909: @dependabot-preview[bot] chore(deps): bump werkzeug from 1.0.0 to 1.0.1 in /tests/apps/python-flask
- #3903: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 172 to 173 in /tests/apps/php

## 0.20.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.20.0/bootstrap.sh
sudo DOKKU_TAG=v0.20.0 bash bootstrap.sh
```

### Bug Fixes

- #3891: @josegonzalez Add missing cpio dependency
- #3861: @josegonzalez Fix app clone and rename calls
- #3682: @josegonzalez Force tty check to run with the default language
- #3853: @josegonzalez Add missing hooks to events plugin

### New Features

- #3899: @josegonzalez Drop unnecessary quotes on docker inspect calls
- #3895: @josegonzalez Expose network listeners to nginx templates for all process types
- #3893: @josegonzalez Rewrite apps plugin in golang
- #3889: @josegonzalez Update herokuish
- #3879: @josegonzalez Drop support for unsupported Debian and Ubuntu releases …
- #3880: @josegonzalez Remove unnecessary source/import statements
- #3871: @josegonzalez Rewrite proxy plugin in golang
- #3869: @josegonzalez Standardize plugin trigger calls
- #3870: @josegonzalez Use Println in favor of Fprintln for os.Stdout
- #3868: @josegonzalez Remove ps command
- #3866: @josegonzalez Unify nginx config commands
- #3865: @josegonzalez Cleanup injected docker labels
- #3860: @josegonzalez Remove deprecated egrep calls from codebase
- #3854: @josegonzalez Remove deprecated code
- #3852: @josegonzalez Standardize plugin code
- #3850: @josegonzalez DRY up reports in golang
- #3851: @josegonzalez Update herokuish to 0.5.6
- #3847: @josegonzalez Custom docker networking
- #3848: @josegonzalez Minor logging changes
- #3843: @josegonzalez Enable HSTS by default
- #3844: @josegonzalez Add global fallback for DOKKU_PROXY_PORT and DOKKU_PROXY_SSL_PORT
- #3609: @jayjun Start long running containers with --init with tests
- #3842: @josegonzalez rework docker-args-process trigger arguments
- #3841: @josegonzalez Implement docker-options:clear

### Documentation

- #3901: @Cellane 📝 Update information about Dokku CLI installation
- #3892: @josegonzalez Move code of conduct to .github org repository
- #3888: @decentral1se Mark 9+ for Debian version
- #3874: @josegonzalez Push users to upgrade to recent versions
- #3864: @alex-galey Change docs copyright to 2020
- #3863: @josegonzalez Update issue template to remove ambiguity around reporting
- #3849: @josegonzalez Reference correct property in network docs example
- #3840: @ollej Add link to fonts plugin
- #3838: @ltalirz Expand docs surrounding access control

### Other

- #3897: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.3.4 to 1.3.5 in /tests/apps/gogrpc
- #3896: @dependabot-preview[bot] chore(deps): bump maven-dependency-plugin from 3.1.1 to 3.1.2 in /tests/apps/java
- #3894: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.27.1 to 1.28.0 in /tests/apps/gogrpc
- #3885: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 171 to 172 in /tests/apps/php
- #3884: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.26.v20200117 to 9.4.27.v20200227 in /tests/apps/java
- #3877: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.3.3 to 1.3.4 in /tests/apps/gogrpc
- #3858: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 170 to 171 in /tests/apps/php
- #3855: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 169 to 170 in /tests/apps/php
- #3846: @dependabot-preview[bot] chore(deps): bump werkzeug from 0.16.1 to 1.0.0 in /tests/apps/python-flask
- #3845: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.27.0 to 1.27.1 in /tests/apps/gogrpc
- #3833: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.26.0 to 1.27.0 in /tests/apps/gogrpc
- #3837: @dependabot-preview[bot] chore(deps): bump jinja2 from 2.10.3 to 2.11.1 in /tests/apps/python-flask
- #3836: @dependabot-preview[bot] chore(deps): bump github.com/golang/protobuf from 1.3.2 to 1.3.3 in /tests/apps/gogrpc
- #3829: @dependabot-preview[bot] chore(deps): bump werkzeug from 0.16.0 to 0.16.1 in /tests/apps/python-flask
- #3830: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 166 to 169 in /tests/apps/php

## 0.19.13

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.13/bootstrap.sh
sudo DOKKU_TAG=v0.19.13 bash bootstrap.sh
```

### Bug Fixes

- #3828: @josegonzalez Reference correct file in nginx:report command

### Other

- #3824: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.25.v20191220 to 9.4.26.v20200117 in /tests/apps/java

## 0.19.12

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.12/bootstrap.sh
sudo DOKKU_TAG=v0.19.12 bash bootstrap.sh
```

### New Features

- #3819: @josegonzalez Allow binding nginx to specific IPv4/IPv6 interfaces
- #3818: @josegonzalez Add support for host-mode networking

### Documentation

- #3814: @treyssatvincent Use dokku:report to for listing domains
- #3809: @josegonzalez Document nginx:show-conf
- #3650: @vincelwt Clarify resource management for docker-local scheduler
- #3806: @kimar Make default vhost example listen to ipv6

### Other

- #3816: @dependabot-preview[bot] chore(deps): bump handlebars from 4.6.0 to 4.7.1 in /tests/apps/.websocket.disabled
- #3815: @dependabot-preview[bot] chore(deps): bump handlebars from 4.5.3 to 4.6.0 in /tests/apps/.websocket.disabled
- #3811: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 165 to 166 in /tests/apps/php
- #3812: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.24.v20191120 to 9.4.25.v20191220 in /tests/apps/java
- #3810: @dependabot-preview[bot] chore(deps): bump monolog/monolog from 1.25.2 to 1.25.3 in /tests/apps/php
- #3808: @dependabot-preview[bot] chore(deps): [security] bump rack from 1.6.11 to 1.6.12 in /tests/apps/ruby
- #3807: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.25.1 to 1.26.0 in /tests/apps/gogrpc
- #3804: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 164 to 165 in /tests/apps/php

## 0.19.11

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.11/bootstrap.sh
sudo DOKKU_TAG=v0.19.11 bash bootstrap.sh
```

### Bug Fixes

- #3800: @josegonzalez Properly track failed check count

### New Features

- #3801: @josegonzalez Update herokuish

### Documentation

- #3798: @znz Fix function descriptions in property-functions file

## 0.19.10

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.10/bootstrap.sh
sudo DOKKU_TAG=v0.19.10 bash bootstrap.sh
```

### Bug Fixes

- #3784: @josegonzalez Ensure checks attempts are tracked per-check instead of globally

### New Features

- #3793: @josegonzalez Omit DWARF symbol table and debug information from go binaries
- #3792: @josegonzalez Unify property function implementations

### Documentation

- #3712: @fruitl00p Added new plugin

### Other

- #3790: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.3 to 20.0.4 in /tests/apps/python-flask
- #3791: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.3 to 20.0.4 in /tests/apps/multi
- #3787: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.2 to 20.0.3 in /tests/apps/multi
- #3788: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.2 to 20.0.3 in /tests/apps/python-flask
- #3785: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.0 to 20.0.2 in /tests/apps/python-flask
- #3786: @dependabot-preview[bot] chore(deps): bump gunicorn from 20.0.0 to 20.0.2 in /tests/apps/multi
- #3748: @dependabot-preview[bot] chore(deps): [security] bump express from 2.5.11 to 4.17.1 in /tests/apps/dockerfile-dokku-scale
- #3749: @dependabot-preview[bot] chore(deps): [security] bump express from 2.5.11 to 4.17.1 in /tests/apps/nodejs-express-noappjson
- #3747: @dependabot-preview[bot] chore(deps): [security] bump express from 2.5.11 to 4.17.1 in /tests/apps/config
- #3746: @dependabot-preview[bot] chore(deps): [security] bump express from 2.5.11 to 4.17.1 in /tests/apps/dockerfile-procfile
- #3741: @dependabot-preview[bot] chore(deps): [security] bump express from 2.5.11 to 4.17.1 in /tests/apps/nodejs-express
- #3783: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.23.v20191118 to 9.4.24.v20191120 in /tests/apps/java
- #3777: @dependabot-preview[bot] chore(deps): [security] bump symfony/http-kernel from 3.4.32 to 3.4.35 in /tests/apps/php
- #3774: @dependabot-preview[bot] chore(deps): bump gunicorn from 19.9.0 to 20.0.0 in /tests/apps/python-flask
- #3779: @dependabot-preview[bot] chore(deps): bump monolog/monolog from 1.25.1 to 1.25.2 in /tests/apps/php
- #3782: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.22.v20191022 to 9.4.23.v20191118 in /tests/apps/java

## 0.19.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.9/bootstrap.sh
sudo DOKKU_TAG=v0.19.9 bash bootstrap.sh
```

### Bug Fixes

- #3781: @michaelshobbs Respect DOKKU_APP_USER in is_image_herokuish_based

### Other

- #3773: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.25.0 to 1.25.1 in /tests/apps/gogrpc
- #3772: @dependabot-preview[bot] chore(deps): bump gunicorn from 19.9.0 to 20.0.0 in /tests/apps/multi
- #3778: @dependabot-preview[bot] chore(deps): [security] bump symfony/http-foundation from 3.4.32 to 3.4.35 in /tests/apps/php
- #3768: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.24.0 to 1.25.0 in /tests/apps/gogrpc

## 0.19.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.8/bootstrap.sh
sudo DOKKU_TAG=v0.19.8 bash bootstrap.sh
```

## 0.19.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.7/bootstrap.sh
sudo DOKKU_TAG=v0.19.7 bash bootstrap.sh
```

### Documentation

- #3765: @znz Fix typo in desc of is_tls13_available

### Other

- #3739: @safeforge dokku run do not supports interactive mode.
- #3762: @dependabot-preview[bot] chore(deps): bump handlebars from 4.4.5 to 4.5.1 in /tests/apps/.websocket.disabled

## 0.19.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.6/bootstrap.sh
sudo DOKKU_TAG=v0.19.6 bash bootstrap.sh
```

### Other

- #3761: @pithyless Fix type-errors in dokku-installer.py
- #3759: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 163 to 164 in /tests/apps/php
- #3758: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 9.4.21.v20190926 to 9.4.22.v20191022 in /tests/apps/java

## 0.19.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.5/bootstrap.sh
sudo DOKKU_TAG=v0.19.5 bash bootstrap.sh
```

### Bug Fixes

- #3756: @jayjun Redirect missing key_file warning to stderr

## 0.19.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.4/bootstrap.sh
sudo DOKKU_TAG=v0.19.4 bash bootstrap.sh
```

### Bug Fixes

- #3755: @dean1012 Warn if key_file is missing on install but do not exit

## 0.19.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.3/bootstrap.sh
sudo DOKKU_TAG=v0.19.3 bash bootstrap.sh
```

### Bug Fixes

- #3753: @josegonzalez Always use python3 for the installer

### Other

- #3743: @dependabot-preview[bot] chore(deps): [security] bump express from 3.1.2 to 4.17.1 in /tests/apps/.websocket.disabled
- #3744: @dependabot-preview[bot] chore(deps): [security] bump handlebars from 1.0.12 to 4.4.5 in /tests/apps/.websocket.disabled
- #3750: @dependabot-preview[bot] chore(deps): [security] bump express from 2.5.11 to 4.17.1 in /tests/apps/dockerfile-procfile-bad
- #3745: @dependabot-preview[bot] chore(deps): [security] bump express from 3.3.8 to 4.17.1 in /tests/apps/gitsubmodules
- #3742: @dependabot-preview[bot] chore(deps): [security] bump express from 2.5.11 to 4.17.1 in /tests/apps/nodejs-express-noprocfile
- #3729: @dependabot-preview[bot] chore(deps): bump monolog/monolog from 1.12.0 to 1.25.1 in /tests/apps/php
- #3732: @dependabot-preview[bot] chore(deps): bump silex/silex from 1.2.3 to 2.2.4 in /tests/apps/php
- #3728: @dependabot-preview[bot] chore(deps): bump jetty-servlet from 7.6.0.v20120127 to 9.4.21.v20190926 in /tests/apps/java
- #3730: @dependabot-preview[bot] chore(deps): bump werkzeug from 0.15.6 to 0.16.0 in /tests/apps/python-flask
- #3737: @dependabot-preview[bot] chore(deps): bump express3-handlebars from 0.2.3 to 0.5.2 in /tests/apps/.websocket.disabled
- #3734: @dependabot-preview[bot] chore(deps-dev): bump heroku/heroku-buildpack-php from 59 to 163 in /tests/apps/php
- #3735: @dependabot-preview[bot] chore(deps): [security] bump symfony/http-kernel from 2.6.4 to 2.8.51 in /tests/apps/php
- #3723: @dependabot-preview[bot] chore(deps): bump sass-globbing from 1.1.1 to 1.1.5 in /tests/apps/multi
- #3731: @dependabot-preview[bot] chore(deps): bump jinja2 from 2.10.1 to 2.10.3 in /tests/apps/python-flask
- #3736: @dependabot-preview[bot] chore(deps): bump socket.io from 0.9.19 to 2.3.0 in /tests/apps/.websocket.disabled
- #3726: @dependabot-preview[bot] chore(deps): bump google.golang.org/grpc from 1.23.0 to 1.24.0 in /tests/apps/gogrpc
- #3727: @dependabot-preview[bot] chore(deps): bump maven-dependency-plugin from 2.4 to 3.1.1 in /tests/apps/java
- #3733: @dependabot-preview[bot] chore(deps): [security] bump symfony/http-foundation from 2.6.4 to 2.8.50 in /tests/apps/php
- #3720: @dependabot-preview[bot] chore(deps): bump compass from 1.0.1 to 1.0.3 in /tests/apps/multi
- #3721: @dependabot-preview[bot] chore(deps): bump sinatra from 1.4.4 to 1.4.8 in /tests/apps/ruby
- #3719: @dependabot-preview[bot] chore(deps): bump thin from 1.6.1 to 1.7.2 in /tests/apps/ruby

## 0.19.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.2/bootstrap.sh
sudo DOKKU_TAG=v0.19.2 bash bootstrap.sh
```

### Bug Fixes

- #3718: @josegonzalez Detect correct python binary to use

## 0.19.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.1/bootstrap.sh
sudo DOKKU_TAG=v0.19.1 bash bootstrap.sh
```

### Bug Fixes

- #3713: @josegonzalez Require nginx 1.13+ in order to enable tls1.3

## 0.19.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.19.0/bootstrap.sh
sudo DOKKU_TAG=v0.19.0 bash bootstrap.sh
```

### Bug Fixes

- #3688: @josegonzalez Correct shfmt issues
- #3684: @josegonzalez Do not push betafish releases to docker hub
- #3681: @josegonzalez Proper openresty support

### New Features

- #3687: @josegonzalez Add scheduler-post-run trigger
- #3702: @josegonzalez Cleanup build and destroy logging output
- #3693: @josegonzalez Remove ssh-keys user-auth trigger in favor of direct check in dokku binary
- #3691: @josegonzalez Silence trigger logging
- #3685: @josegonzalez Allow passing labels to one-off dokku containers
- #3680: @josegonzalez Follow updated intermediate recommendations from the Mozilla SSL Config Generator
- #3677: @josegonzalez Improve package build process
- #3679: @josegonzalez Allow keeping the git directory during builds
- #3577: @josegonzalez Use new-style docker management commands
- #3678: @josegonzalez Add container-type to run and deploy containers
- #3671: @josegonzalez Allow overriding checks doc url
- #3662: @leshik Improve nginx ciphers compatibility
- #3668: @josegonzalez Release latest docker image on release
- #3659: @fzerorubigd Add support for grpc/grpcs port forwarding
- #3690: @josegonzalez Add support for python3

### Documentation

- #3701: @limenet Docs / Getting Started: use HTTPS instead of SSH for clone
- #3699: @robhudson Add `dokku cleanup` to help output
- #3669: @josegonzalez Fix reference to CHECKS file location

### Tests

- #3670: @josegonzalez Upgrade all python test deps

## 0.18.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.18.5/bootstrap.sh
sudo DOKKU_TAG=v0.18.5 bash bootstrap.sh
```

### Bug Fixes

- #3704: @josegonzalez Fail nginx:build-config if the image does not exist

## 0.18.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.18.4/bootstrap.sh
sudo DOKKU_TAG=v0.18.4 bash bootstrap.sh
```

### Other

- #3703: @scjody Update DOKKU_SCALE from Procfile during ps:scale

## 0.18.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.18.3/bootstrap.sh
sudo DOKKU_TAG=v0.18.3 bash bootstrap.sh
```

### Bug Fixes

- #3660: @josegonzalez Trigger builder-release for dockerfile correctly
- #3655: @znz Fix filename of sshcommand tarball
- #3648: @josegonzalez Copy the deb file before creating the image

### New Features

- #3656: @josegonzalez Allow users to customize the container start command
- #3657: @josegonzalez Show error message when docker-related build commands fail
- #3654: @josegonzalez Update herokuish to 0.5.3

### Documentation

- #3652: @josegonzalez Correct issue in inspect call for issue template

## 0.18.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.18.2/bootstrap.sh
sudo DOKKU_TAG=v0.18.2 bash bootstrap.sh
```

### New Features

- #3645: @josegonzalez Use version in DOKKU_LIB_ROOT
- #3644: @josegonzalez Refactor temp file handling
- #3643: @josegonzalez Quiet deploy output
- #3641: @josegonzalez Pass SOURCECODE_WORK_DIR to build-buildpack triggers
- #3639: @josegonzalez Refer to upstream sshcommand package

### Documentation

- #3642: @josegonzalez Correct issue with label change in docs
- #3640: @josegonzalez Add missing popd to post-extract example

## 0.18.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.18.1/bootstrap.sh
sudo DOKKU_TAG=v0.18.1 bash bootstrap.sh
```

### New Features

- #3636: @josegonzalez Unify deb and rpm creation code
- #3635: @josegonzalez Upgrade herokuish to 0.5.2

## 0.18.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.18.0/bootstrap.sh
sudo DOKKU_TAG=v0.18.0 bash bootstrap.sh
```

### Bug Fixes

- #3627: @josegonzalez Make image removal synchronous
- #3618: @josegonzalez Ensure the dokku-retire timer is properly installed
- #3614: @alexquick Validate args for config:set and config:unset
- #3605: @josegonzalez Handle case where there are empty newlines in the authorized_keys file
- #3603: @josegonzalez Drop extra % sign in common.LogVerboseQuiet
- #3597: @josegonzalez Allow default trace function to work

### New Features

- #3628: @josegonzalez Handle file copying in a secure and reliable fashion
- #3630: @josegonzalez Fix issue where push warning on bad branch was skipped
- #3629: @josegonzalez Avoid calling the user-auth trigger where possible
- #3626: @josegonzalez Builder plugins
- #3599: @josegonzalez Scope docker-cleanup to specific app
- #3589: @michaelshobbs Allow running Dokku in Docker
- #3607: @josegonzalez Purge cache using herokuish image
- #3602: @alexymik Create a 502 error page to automatically refresh if backend status changes
- #3600: @josegonzalez Refactor IsImageHerokuishBased to match shell version

### Documentation

- #3625: @josegonzalez Remove old reference to SPONSORS.md
- #3619: @josegonzalez Cleanup plugin creation docs
- #3612: @jayjun Improve testing docs
- #3613: @Lyelt Remove all uses of proxy_set_header Connection "upgrade"
- #3596: @josegonzalez Add missing hooks to events plugin and plugin triggers docs

### Tests

- #3610: @jayjun Correct Bats path in single tests

## 0.17.9

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.9/bootstrap.sh
sudo DOKKU_TAG=v0.17.9 bash bootstrap.sh
```

### Bug Fixes

- #3593: @JakeAngell Fix nginx template for https in "Connection" header

### Documentation

- #3595: @josegonzalez Drop extra help output for trace

## 0.17.8

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.8/bootstrap.sh
sudo DOKKU_TAG=v0.17.8 bash bootstrap.sh
```

### Bug Fixes

- #3591: @palfrey Allow SSH keys with no ending newline

### New Features

- #3587: @josegonzalez feat: drop make and gcc as dependencies

## 0.17.7

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.7/bootstrap.sh
sudo DOKKU_TAG=v0.17.7 bash bootstrap.sh
```

### New Features

- #3586: @josegonzalez ps plugin parallel usage cleanup

### Documentation

- #3584: @josegonzalez Fix no-install-recommends documentation

### Other

- #3579: @znz Update plugin list

## 0.17.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.6/bootstrap.sh
sudo DOKKU_TAG=v0.17.6 bash bootstrap.sh
```

### New Features

- #3578: @josegonzalez Allow omitting resource args by setting DOKKU_OMIT_RESOURCE_ARGS

## 0.17.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.5/bootstrap.sh
sudo DOKKU_TAG=v0.17.5 bash bootstrap.sh
```

### New Features

- #3576: @josegonzalez Allow setting DOCKER_BIN path for docker execution

## 0.17.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.4/bootstrap.sh
sudo DOKKU_TAG=v0.17.4 bash bootstrap.sh
```

### New Features

- #3575: @josegonzalez Add a way to cleanup apps for specific schedulers

## 0.17.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.3/bootstrap.sh
sudo DOKKU_TAG=v0.17.3 bash bootstrap.sh
```

### Bug Fixes

- #3570: @znz Fix typos in trace help

### New Features

- #3574: @josegonzalez Add support for pulling app status from scheduler plugins
- #3571: @znz Simplify hostname_regex

## 0.17.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.2/bootstrap.sh
sudo DOKKU_TAG=v0.17.2 bash bootstrap.sh
```

### Bug Fixes

- #3568: @josegonzalez Correct issue with clearing global domains

## 0.17.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.1/bootstrap.sh
sudo DOKKU_TAG=v0.17.1 bash bootstrap.sh
```

### Bug Fixes

- #3567: @josegonzalez Ignore SC2064

## 0.17.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.17.0/bootstrap.sh
sudo DOKKU_TAG=v0.17.0 bash bootstrap.sh
```

### Bug Fixes

- #3565: @josegonzalez Properly cleanup temp files
- #3563: @josegonzalez Properly split strings in sanitized ps:inspect
- #3560: @josegonzalez Resource setting fixes
- #3556: @josegonzalez Add missing domains:clear-global command
- #3554: @znz Switch from rawgit to jsdelivr in manifest.json too

### New Features

- #3566: @josegonzalez Allow users to specify wildcard domains
- #3564: @josegonzalez Add config:clear command
- #3477: @alexquick Allow specifying environment variables for dokku run
- #3540: @josegonzalez Do not append the global domain for matching subdomains
- #3559: @josegonzalez Add trace:on and trace:off
- #3561: @josegonzalez feat: disable scaling if app contains DOKKU_SCALE file
- #3558: @josegonzalez Add nginx:show-conf command
- #3549: @josegonzalez Add message indicating that the user is looking at default limits/reservations

### Documentation

- #3557: @josegonzalez Standardize on node-js-app in examples
- #3548: @josegonzalez Remove outdated global resource setting

### Other

- #3562: @josegonzalez Proxy ports manipulation updates

## 0.16.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.16.4/bootstrap.sh
sudo DOKKU_TAG=v0.16.4 bash bootstrap.sh
```

### Bug Fixes

- #3547: @josegonzalez Correct retrieval of resource values for alternative schedulers

### New Features

- #3546: @josegonzalez Add ability to trigger an arbitrary plugin hook

## 0.16.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.16.3/bootstrap.sh
sudo DOKKU_TAG=v0.16.3 bash bootstrap.sh
```

### Bug Fixes

- #3541: @josegonzalez Handle case where image is null on first deploy

### New Features

- #3543: @josegonzalez Add ability to clear global domains
- #3517: @josegonzalez SSH key updates
- #3538: @josegonzalez Silence dokku run 'errors'

### Documentation

- #3523: @MarcDiethelm Add an example how to specify a Dockerfile for deployment
- #3539: @josegonzalez Warn users when ufw is enabled

## 0.16.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.16.2/bootstrap.sh
sudo DOKKU_TAG=v0.16.2 bash bootstrap.sh
```

### Documentation

- #3536: @josegonzalez docs: Add documentation for nginx-pre-reload limitation
- #3535: @josegonzalez Add help output for apps:exists

## 0.16.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.16.1/bootstrap.sh
sudo DOKKU_TAG=v0.16.1 bash bootstrap.sh
```

### New Features

- #3532: @josegonzalez refactor: allow the scheduler to decide if an app is deployed

### Documentation

- #3530: @jhstatewide Updated info about supported Ubuntu versions

## 0.16.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.16.0/bootstrap.sh
sudo DOKKU_TAG=v0.16.0 bash bootstrap.sh
```

### Bug Fixes

- #3527: @josegonzalez Use DOKKU_IMAGE for report command

### New Features

- #3528: @josegonzalez feat: add support for quiet ps:scale output
- #3516: @ape-box fix nginx template with Connection header to http_connection
- #3513: @Mayeu Support installing plugins via file:// scheme

### Documentation

- #3525: @artofrawr add multi dockerfile plugin to plugins.md
- #3518: @renestalder Add GitLab GIT_STRATEGY for stop_preview_app
- #3506: @vanastassiou Clarify application deployment documentation
- #3512: @Mayeu Update example app in deploy tutorial

## 0.15.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.15.5/bootstrap.sh
sudo DOKKU_TAG=v0.15.5 bash bootstrap.sh
```

### New Features

- #3511: @josegonzalez Add json output to config:export

### Documentation

- #3510: @josegonzalez Remove SPONSORS doc in favor of OpenCollective
- #3509: @Neamar Missing space in markdown formatting
- #3507: @renestalder Fix GitLab CI examples

## 0.15.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.15.4/bootstrap.sh
sudo DOKKU_TAG=v0.15.4 bash bootstrap.sh
```

### Bug Fixes

- #3499: @josegonzalez Ensure the .buildpacks file exists before writing to it
- #3500: @josegonzalez Always allow ps:scale proc=0
- #3497: @josegonzalez Allow reporting domains when there are none specified

### New Features

- #3502: @josegonzalez Add a trigger to fetch the git revision
- #3501: @josegonzalez Move log retrieval to docker-local scheduler
- #3498: @josegonzalez Add ability to report domains globally
- #3496: @josegonzalez Cleanup glide plugins when running src-clean

### Documentation

- #3504: @vanastassiou Edits for readability and conciseness
- #3490: @josegonzalez Add missing link to resource management docs

## 0.15.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.15.3/bootstrap.sh
sudo DOKKU_TAG=v0.15.3 bash bootstrap.sh
```

### New Features

- #3489: @josegonzalez feat: upgrade herokuish to 0.5.0 (Ubuntu 18.04)

## 0.15.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.15.2/bootstrap.sh
sudo DOKKU_TAG=v0.15.2 bash bootstrap.sh
```

### Bug Fixes

- #3488: @josegonzalez fix: call ps:retire from system service

## 0.15.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.15.1/bootstrap.sh
sudo DOKKU_TAG=v0.15.1 bash bootstrap.sh
```

### Bug Fixes

- #3485: @josegonzalez fix: ensure 'dokku report' always succeeds for any app

## 0.15.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.15.0/bootstrap.sh
sudo DOKKU_TAG=v0.15.0 bash bootstrap.sh
```

### Bug Fixes

- #3479: @josegonzalez Turn off logging for nginx validate configuration
- #3470: @josegonzalez fix: correct the argument for get_release_cmd

### New Features

- #3469: @josegonzalez Resource management
- #3466: @josegonzalez Quieter builds
- #3467: @josegonzalez feat: update golang in use for binary building
- #3465: @josegonzalez Vagrant VM Enhancements
- #3464: @josegonzalez Upgrade to go-procfile-util version 0.6.0
- #3463: @josegonzalez Implement version flags
- #3462: @josegonzalez Upgrade procfile-util
- #3449: @josegonzalez Only override the `WORKDIR` in copy_from_image if the image is `gliderlabs/herokuish` based
- #3461: @josegonzalez Allow skipping aws releases for plugins
- #3459: @josegonzalez Upgrade to herokuish:0.4.9
- #3413: @josegonzalez Implement buildpacks plugin

### Documentation

- #3482: @multikatt rails-database -> railsdatabase
- #3476: @lazyatom Add chrome plugin to documentation
- #3468: @josegonzalez Doc cleanup

### Other

- #3471: @josegonzalez chore: drop plugn package building

## 0.14.6

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.14.6/bootstrap.sh
sudo DOKKU_TAG=v0.14.6 bash bootstrap.sh
```

### Bug Fixes

- #3448: @josegonzalez Remove https port mappings from new app during clone
- #3434: @tamanobi Ignore cache directories when clone

### New Features

- #3447: @josegonzalez Update herokuish to 0.4.8

### Documentation

- #3420: @baikunz Add reference to external post-deploy-script plugin
- #3453: @jayjun Fix Deployment guides style
- #3445: @zuccs Fix typo in deployment tasks documentation
- #3441: @josegonzalez Update issue template information
- #3436: @jayjun Fix Getting Started guides style
- #3425: @jayjun Add warning about PORT variable in deploy tutorial

### Tests

- #3435: @josegonzalez Fix lint issues across codebase

## 0.14.5

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.14.5/bootstrap.sh
sudo DOKKU_TAG=v0.14.5 bash bootstrap.sh
```

### Bug Fixes

- #3419: @jayjun Fix Dokku installer checkbox for WebKit and Edge browsers

## 0.14.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.14.4/bootstrap.sh
sudo DOKKU_TAG=v0.14.4 bash bootstrap.sh
```

### Bug Fixes

- #3415: @josegonzalez Drop universe installation in debian

## 0.14.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.14.3/bootstrap.sh
sudo DOKKU_TAG=v0.14.3 bash bootstrap.sh
```

### Bug Fixes

- #3412: @josegonzalez Ensure official golang plugins have correct help output
- #3411: @josegonzalez Properly handle the nginx installation dependency
- #3406: @josegonzalez Add missing semicolons to app-json script
- #3394: @josegonzalez Quiet ps:retire where possible

### New Features

- #3410: @josegonzalez Make installs quieter
- #3409: @josegonzalez Build golang binaries with higher concurrency
- #3408: @josegonzalez Disable container restarts for stopped containers
- #3389: @heyarne Remove jQuery from web-based installer

### Documentation

- #3407: @tkrugg Fix typo on domain docs

### Tests

- #3414: @josegonzalez Test and release changes

## 0.14.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.14.2/bootstrap.sh
sudo DOKKU_TAG=v0.14.2 bash bootstrap.sh
```

### Bug Fixes

- #3395: @josegonzalez Correct early exit 1 in apps:report

### Documentation

- #3393: @jayjun Fix capitalization and formatting in installation guides
- #3392: @jayjun Fix wrong PostgreSQL environment variable in guide
- #3391: @josegonzalez Update all gpgkey paths to the new url

## 0.14.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.14.1/bootstrap.sh
sudo DOKKU_TAG=v0.14.1 bash bootstrap.sh
```

### Bug Fixes

- #3386: @josegonzalez Ensure we can deploy code when there is no pre or post-deploy script defined

## 0.14.0

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.14.0/bootstrap.sh
sudo DOKKU_TAG=v0.14.0 bash bootstrap.sh
```

### Bug Fixes

- #3384: @josegonzalez fix: use updated gpg key for apt repository
- #3382: @josegonzalez Set cleanup to global when no application is specified
- #3350: @josegonzalez Do not build the proxy config when there are no app listeners
- #3366: @josegonzalez Add post-app-clone-setup to network clean make target
- #3349: @josegonzalez Ensure apps are cleanly cloned
- #3356: @josegonzalez Move storage directory into DOKKU_LIB_ROOT
- #3341: @baikunz Select only default dokku network IP
- #3348: @josegonzalez Use correct name for packagecloud token when running CI commands
- #3339: @josegonzalez Properly check args when calling cleanup globally
- #3344: @josegonzalez Allow running dokku report without needing an interactive shell

### New Features

- #3381: @josegonzalez Add support for the Procfile release command
- #3380: @josegonzalez Install stable docker when using bootstrap script
- #3378: @josegonzalez Make admin setup UI look nicer
- #3369: @josegonzalez Pull invalid nginx configuration when the nginx configs fail to validate
- #3371: @josegonzalez Add tests section to changelog
- #3358: @josegonzalez Image tag deploy workflow cleanup
- #3351: @josegonzalez Do not clone URLS and VHOST files to new apps
- #3357: @josegonzalez Add support for building arbitrary releases
- #3354: @josegonzalez Drop default dhparam key size to 2048
- #3347: @josegonzalez Upgrade herokuish
- #3352: @josegonzalez Increase security of default SSL setup
- #3353: @josegonzalez Normalize tests
- #3345: @josegonzalez Allow triggering the full report for all apps via --all flag
- #3346: @josegonzalez Always overwrite the dokku.conf file for nginx

### Documentation

- #3377: @josegonzalez Remove team member section on homepage in favor of sponsor section
- #3376: @josegonzalez Switch from rawgit to jsdelivr
- #3365: @josegonzalez Remove extra tags:create call from docs

### Tests

- #3379: @josegonzalez Run mvdan/shfmt on test runs
- #3370: @josegonzalez Add junit support to shellcheck output
- #3308: @josegonzalez Add timing info to test runs on CircleCI
- #3367: @josegonzalez Run tests from built artifact
- #3368: @josegonzalez Balance circleci tests
- #3363: @josegonzalez Add a wrapper for invoking a single test
- #3362: @josegonzalez Allow tests to be run from any directory
- #3360: @josegonzalez Switch to bats-core
- #3361: @josegonzalez Do not generate dhparam for tests

### Other

- #3279: @fruitl00p Make sure the universe repo is loaded into APT

## 0.13.4

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.13.4/bootstrap.sh
sudo DOKKU_TAG=v0.13.4 bash bootstrap.sh
```

### Bug Fixes

- #3337: @josegonzalez Use correct container id variable for killing containers

### New Features

- #3338: @josegonzalez Redirect ps:retire output to a log file

## 0.13.3

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.13.3/bootstrap.sh
sudo DOKKU_TAG=v0.13.3 bash bootstrap.sh
```

### Bug Fixes

- #3330: @josegonzalez Ensure chowned properties always have a user and group set

### New Features

- #3334: @josegonzalez refactor: run every 5 minutes instead of 2

## 0.13.2

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.13.2/bootstrap.sh
sudo DOKKU_TAG=v0.13.2 bash bootstrap.sh
```

### Bug Fixes

- #3329: @josegonzalez Avoid parsing missing file when retiring containers
- #3325: @wcalandro Add "--global" to dokku cleanup on dokku update

### Documentation

- #3326: @josegonzalez Add note to release on how to upgrade via the bootstrap script

## 0.13.1

Install/update via the bootstrap script:

```shell
wget -NP . https://dokku.com/install/v0.13.1/bootstrap.sh
sudo DOKKU_TAG=v0.13.1 bash bootstrap.sh
```

### Bug Fixes

- #3324: @josegonzalez Add missing source of config functions

## 0.13.0

### Bug Fixes

- #3312: @josegonzalez fix: keep track of failed containers regardless of docker kill output
- #3299: @josegonzalez Wrap script_bin in double-quotes
- #3295: @alexquick Sort config:show by key name
- #3288: @josegonzalez Wrap script binary in single quotes during executable check

### New Features

- #3302: @josegonzalez Add ability to check on app lock status via apps:locked command
- #3315: @aokon Upgrade herokuish to 0.4.5 version
- #3236: @josegonzalez Retire old containers
- #3307: @josegonzalez Add support for docker.io package
- #3301: @josegonzalez Add ability to sync packages to a new version of ubuntu
- #3286: @josegonzalez Sanitize docker inspect output with ps:inspect
- #3240: @josegonzalez Refactor Procfile handling to use go-procfile-util
- #3282: @josegonzalez Use create instead of run for faster and more reliable file copy from docker images
- #3280: @josegonzalez Better scheduler support
- #3259: @josegonzalez Check if script is executable when a full path is specified

### Documentation

- #3314: @royklutman Remove reference to non-existent DigitalOcean hosting plan
- #3313: @morenoh149 Indicate to user to specify hostname
- #3310: @josegonzalez Add a note to our issue template begging for money
- #3281: @josegonzalez Add documentation on custom error pages

## 0.12.13

### New Features

- #3257: @josegonzalez Suppress output in git plugin during builds
- #3254: @michaelshobbs Update herokuish to 0.4.4

### Documentation

- #3270: @alexymik Correct typo in git documentation
- #3268: @josegonzalez Correct notice on ubuntu support
- #3247: @mimischi Fix typo in ps:stopall
- #3246: @dv Change DISABLE_CHOWN to disable-chown

## 0.12.12

### New Features

- #3244: @josegonzalez Allow disabling chown for persistent storage in scheduler-docker-local

## 0.12.11

### Bug Fixes

- #3238: @josegonzalez Handle proxy issues in app renaming
- #3234: @mashrikt Unset GIT_QUARANTINE_PATH when updating repo submodule
- #3223: @josegonzalez Get the global scheduler if no app is specified
- #3218: @wcalandro Fix error text when using "dokku plugin:uninstall"

### New Features

- #3242: @josegonzalez Upgrade herokuish to 0.4.3
- #3241: @josegonzalez Add a subcommand for retrieving failed app deploy logs
- #3237: @josegonzalez Support --quiet header when showing all environment variables

### Documentation

- #3235: @josegonzalez Switch from ps:rebuild to ps:restart
- #3221: @josegonzalez Better callout for why env vars do not get applied to dockerfile builds

## 0.12.10

### New Features

- #3214: @josegonzalez Add net-tools as a dependency to debian installs

## 0.12.9

### Bug Fixes

- #3212: @josegonzalez Add missing config source

## 0.12.8

### Bug Fixes

- #3211: @josegonzalez Add missing source of config/functions

### Documentation

- #3204: @znz Add `--no-restart` to `config:unset` of `config:help`
- #3203: @josegonzalez Clarify issue template

## 0.12.7

### Bug Fixes

- #3200: @josegonzalez fix: correct bash-completion integration

### New Features

- #3199: @josegonzalez Update herokuish to 0.4.2
- #3198: @josegonzalez Cleanup temporary changes during betafish releases

## 0.12.6

### Bug Fixes

- #3193: @josegonzalez Install bash-completion files correctly
- #3179: @josegonzalez Ignore issues with popd when OS versions with stricter security
- #3177: @philm ensure dokku-redeploy runs when docker is stopped then started
- #3176: @josegonzalez Detect mixed running status on service start

### New Features

- #3195: @josegonzalez Allow lower versions of docker-engine
- #3181: @malixsys Adding support for `http2_push_preload` to nginx 1.13.9+ configuration
- #3183: @josegonzalez Unskip initial herokuish test
- #3175: @josegonzalez Implement bash-completion for commands

### Documentation

- #3197: @josegonzalez Add a tutorial for deploying applications via gitlab ci
- #3194: @josegonzalez Clarify why dokku report information is useful
- #3189: @josegonzalez Correct issue with adding a user remotely

## 0.12.5

### Bug Fixes

- #3173: @josegonzalez fix: do not output error message twice

### New Features

- #3172: @josegonzalez feat: Add the ability to ignore existing applications during a git clone
- #3171: @josegonzalez Allow users to override the reported app url
- #3170: @josegonzalez Add ps:startall command

### Documentation

- #3159: @zuck Improve docs for default site with HTTPS

## 0.12.4

### Bug Fixes

- #3168: @josegonzalez Use correct variable name when writing deploy-branch value

## 0.12.3

### Bug Fixes

- #3156: @josegonzalez fix: ensure we _always_ include all types in history output

### Documentation

- #3163: @josegonzalez Better apt install formatting

### Other

- #3153: @scjody Allow specifying a separate DOKKU_HOST_ROOT

## 0.12.2

### Bug Fixes

- #3155: @josegonzalez fix: re-add is_container_running

## 0.12.1

### Bug Fixes

- #3151: @josegonzalez fix: include missing config/functions source

## 0.12.0

### Bug Fixes

- #3146: @josegonzalez Fix non ubuntu installs
- #3138: @josegonzalez Use correct path for /etc/default file
- #3137: @josegonzalez Ensure we can disable setting the rev-env-var
- #3131: @axilleas Capitalize log sentence when renaming containers
- #3128: @Modicrumb Improve windows vagrant experience
- #3105: @znz Follow renaming from deploy-method to deploy-source
- #3101: @josegonzalez Handle stopped nginx during debian installation

### New Features

- #3141: @josegonzalez Centralize app existence checks into the apps plugin
- #3147: @josegonzalez Create proxy:ports-set call
- #3145: @josegonzalez Add report trigger
- #3144: @josegonzalez Increase curl max timeout to 600 seconds (10 minutes)
- #3107: @znz Remove unused password in ssl cert generation
- #3095: @josegonzalez Migrate env for NGINX_* to PROXY_*
- #3140: @josegonzalez Add newline to config:get output
- #3139: @josegonzalez Add ability to initialize a git repository out of band
- #3111: @josegonzalez Upgrade herokuish to 0.4.0
- #3110: @josegonzalez Upgrade herokuish to 0.3.36
- #3106: @znz Remove unnecessary shellcheck disable
- #3098: @josegonzalez Pull herokuish from docker hub when installing via package
- #3100: @josegonzalez Properly handle invalid process type entries during DOKKU_SCALE generation
- #3097: @josegonzalez Update herokuish to 0.3.35

### Documentation

- #3148: @josegonzalez Use consistent terms for domains, apps, and commands
- #3135: @josegonzalez Revert "Clarify that the checks plugin only matches content start"
- #3134: @tomdyson Fix typo in upgrading docs
- #3119: @TomasHubelbauer Link through to the application deployment page after the installation
- #3118: @Tyilo Clarify that the checks plugin only matches content start
- #3113: @ilyapoz Fix proxy management link
- #3112: @josegonzalez Minor doc css fixes
- #3104: @sarendsen Add dokku-limit to plugins documentation
- #3108: @znz Update plugin list output

## 0.11.6

### Bug Fixes

- #3091: @josegonzalez Properly trigger tar-based deploys on git-deployed repositories
- #3076: @Kjwon15 Prune worktree after build
- #3090: @josegonzalez Ensure all plugin triggers have docs and events integration
- #3089: @josegonzalez Use a longer password for self-signed certificates

### New Features

- #2950: @adelq Add configuration option to disable automatic app creation
- #3093: @josegonzalez Add subcommands to allow app locking and unlocking
- #3092: @josegonzalez Add support for configuring the app shell

### Documentation

- #3096: @josegonzalez docs: Document how to check on a running dokku-installer

## 0.11.5

### Bug Fixes

- #3088: @josegonzalez Silence port retrieval stderr
- #3086: @josegonzalez Fix help output for golang plugins
- #3079: @josegonzalez Move container status exclusively to ps plugin

### New Features

- #3085: @josegonzalez Add support for checking if an application exists
- #3032: @josegonzalez Add support for arbitrary ubuntu versions
- #3074: @josegonzalez Add the ability to disable ANSI prefixes via DOKKU_DISABLE_ANSI_PREFIX_REMOVAL
- #3083: @josegonzalez Source /etc/defaults/dokku if available

### Documentation

- #2958: @silverfix Add tutorial for running Dokku on an external volume
- #3082: @josegonzalez Switch from Gratipay to Patreon
- #3081: @josegonzalez Add docs for switching between deployment methodologies

## 0.11.4

### Bug Fixes

- #3071: @josegonzalez Do not grab restart policies if the deploy phase cannot be read
- #3065: @josegonzalez Check if dokkurc files are readable before attempting to source
- #3066: @josegonzalez Validate that all application names are valid domain names
- #3052: @alexquick Remove bad config keys on load from app/global envfiles

### New Features

- #3073: @josegonzalez Add support for rhel
- #3039: @josegonzalez Enhance security-related upgrade process
- #3038: @shrmnk Add ps:stopall subcommand
- #3055: @michaelshobbs Update to herokuish v0.3.34
- #3045: @jcrben Remove nginx configuration files on debian purge

### Documentation

- #3072: @josegonzalez Remove all references to VHOST files from documentation
- #3069: @josegonzalez Remove potentially bad nginx template examples
- #3059: @lwm Add note for runtime host configuration for checks.
- #3041: @jcrben Point to unattended install instructions
- #3053: @mimischi Add plugin to manage Dockerfile location to documentation
- #3062: @shannara Change help run command be more explicit
- #3034: @znz Fix a typo in golang config.go source
- #3061: @tomdyson Fix plugin-triggers docs typo
- #3056: @raine Fix typo in config help output
- #3044: @takuti Fix links to port-management
- #3042: @josegonzalez Improve documentation around port handling.

## 0.11.3

### Bug Fixes

- #3031: @josegonzalez fix: ensure we respect DOKKU_DEPLOY_BRANCH when rebuilding applications

### New Features

- #3028: @josegonzalez Ensure parallel runs properly for non-restorable apps and moreutils parallel
- #3030: @josegonzalez feat: allow changing the system user the properties plugin uses
- #3024: @jcrben Use high-availability pool keyserver during tests
- #3017: @josegonzalez feat: add pre-start trigger for notifying on application start

### Documentation

- #3020: @gliwka Point to docs in the right version
- #3016: @josegonzalez Update nginx template example to use http2 when available

## 0.11.2

### Bug Fixes

- #3014: @josegonzalez fix: handle case where DOKKU_DOCKERFILE_PORTS is an empty string
- #3013: @alexquick Fix some issues with config/network/repo help output
- #3012: @alexquick Fail when setting/unsetting invalid keys
- #3011: @alexquick Forward output from plugn triggers to user
- #3004: @josegonzalez Return/Exit 1 when an image being deployed is invalid

### Documentation

- #3015: @elia Tiny fixes to triggers documentation

## 0.11.1

### Bug Fixes

- #3010: @josegonzalez fix: route config_all to the `config` command to fix datastore plugin usage
- #3009: @josegonzalez fix: correct the guard around the config_export call in config_sub
- #3006: @josegonzalez fix: do not allow shadowing of the CACHE_DIR variable
- #3005: @josegonzalez fix: persist users in the dokku group through installations
- #3003: @josegonzalez Fix issues in apps:clone calls
- #3001: @josegonzalez fix: allow applications to begin with numeric values

### New Features

- #3002: @josegonzalez fix: omit redirection of docker build output
- #3000: @josegonzalez fix: remove golang files and triggers directory for packaging

## 0.11.0

### Bug Fixes

- #2998: @josegonzalez Fix issues in release process
- #2993: @josegonzalez Add config_all alias for plugin usage
- #2972: @buckle2000 Correct typo in docker-options:remove error output
- #2964: @znz Remove unused variable
- #2967: @znz Fix indentation in test file
- #2963: @znz Correct typos in config plugin and remove potential infinite recursion issue
- #2951: @josegonzalez Handle case where the app directory is a symlink
- #2939: @znz Remove unnecessary lines
- #2945: @znz Fix network plugin version
- #2937: @michaelshobbs Strip restart flag from app_user_pre_deploy_trigger
- #2931: @josegonzalez Upgrade git package for CI
- #2928: @silverfix Do not overwrite the VHOST file during installation if it exists
- #2926: @vtavernier Remove leading forward slash from app name in git-upload-pack

### New Features

- #2985: @bitmand Build a custom dhparam file once for nginx and include it as default
- #2974: @josegonzalez Upgrade to herokuish 0.3.33
- #2973: @josegonzalez Allow usage of git 2.13.0+ by unsetting GIT_QUARANTINE_PATH during git worktree usage
- #2971: @miraculixx Add support for older virtualbox versions in official Dokku Vagrantfile
- #2966: @znz Simplify internal config functions to reduce duplication
- #2751: @alexquick Move config plugin to golang
- #2938: @michaelshobbs Upgrade to golang 1.9.1
- #2736: @josegonzalez Implement Network Plugin
- #2929: @michaelshobbs Add codacy config and coverage targets

### Documentation

- #2935: @jcrben Document how to make herokuish optional during the bootstrap installation
- #2982: @agorf Correct typo in user management docs
- #2981: @agorf Correct typos in process management docs
- #2969: @znz Correct comments on network triggers
- #2965: @znz Remove spaces from config subcommand help output to mirror help output of other subcommands
- #2954: @mrname Add vernemq community datastore plugin to docs
- #2944: @axilleas Fix syntax typo in debian installation docs
- #2932: @znz Update code comment to match documentation
- #2933: @znz Fix version number for network binding documentation

## 0.10.5

### Bug Fixes

- #2912: @josegonzalez Add missing depends statement for rsyslog
- #2906: @manuel-colmenero Check the location of nginx in a central way
- #2895: @josegonzalez cd to app directory when calling git worktree add

### Documentation

- #2922: @axilleas Clarify the minimum Nginx version for HTTP/2 support
- #2919: @wootwoot1234 Update nginx documentation surrounding file uploading for php buildpack users
- #2913: @znz Fix a typo in the rpm release script
- #2910: @buckle2000 Add a note about using the full git url for non-compliant toolchains

## 0.10.4

### Bug Fixes

- #2894: @josegonzalez fix: bail if any step in the release process fails
- #2880: @josegonzalez fix: properly detect empty subcommands
- #2881: @josegonzalez Verify app name on git push
- #2858: @cstroe Use correct port number for the upstream.
- #2848: @josegonzalez Ensure https applications return an https url from `dokku url`
- #2839: @josegonzalez fix: skip clearing cache if we are not building a herokuish image

### New Features

- #2890: @michaelshobbs use circleci 2.0
- #2847: @scjody Add nginx ppa before installing Dokku
- #2850: @michaelshobbs add optional PROC_TYPE and CONTAINER_INDEX to docker-args-deploy plugn trigger
- #2840: @josegonzalez Add DYNO environment variable to run containers
- #2824: @josegonzalez Upgrade herokuish to version 0.3.31

### Documentation

- #2861: @adelq Use non-deprecated apps command
- #2878: @m0rth1um Add telegram notifications plugin
- #2876: @josegonzalez docs: clarify storage documentation caveats
- #2873: @josegonzalez docs: add a note on which docs to look at for customizing nginx docs
- #2867: @josegonzalez docs: cleanup help output for dokku shell
- #2859: @josegonzalez docs: use relative link for application deployment doc
- #2866: @josegonzalez Add missing migration guides
- #2863: @josegonzalez docs: fix syntax on getting started docs
- #2836: @fishnux Add a note regarding nginx dependency to installation docs
- #2834: @iansu Clarify port exposure in Dockerfile documentation

## 0.10.3

### Bug Fixes

- #2832: @josegonzalez fix: use python2.7 binary instead of python2 binary

## 0.10.2

### New Features

- #2827: @josegonzalez feat: allow installation of openresty instead of nginx

## 0.10.1

### Bug Fixes

- #2826: @josegonzalez Fix HISTORY.md generator

## 0.10.0

### Bug Fixes

- #2820: @josegonzalez Require netcat in debian packaging
- #2774: @fruitl00p Include docker-options in the default `dokku`
- #2778: @zarqman Fix /etc/logrotate.d/dokku on debian
- #2747: @ebeigarts Update herokuish base image on updates using --pull
- #2739: @josegonzalez Use listener_port in nginx.conf.sigil
- #2735: @josegonzalez Ensure we can call ps:report without specifying an application
- #2733: @josegonzalez Add support for new docker package names
- #2730: @weyert Ignore the cache directory when cloning an app
- #2723: @weyert Call non-deprecated plugin:list method

### New Features

- #2822: @josegonzalez refactor: allow skipping cleanup on a per-application basis
- #2754: @fzerorubigd Add support for set DOKKU_IMAGE per app
- #2815: @markstory Add stickler-ci configuration.
- #2809: @oliw Remove aufs step from Makefile
- #2785: @josegonzalez Add a release-plugin binary
- #2777: @stokarenko Turn on ps-post-stop hook.
- #2781: @fruitl00p Adds docker.io support
- #2766: @josegonzalez Upgrade to herokuish 0.3.29
- #2765: @josegonzalez Install python3-software-properties as an alternative to python-software-properties
- #2642: @chiedo Added better default nginx error pages
- #2678: @callahad Default to secure PCI-compliant SSL setup
- #2734: @josegonzalez Allow quieter report output

### Documentation

- #2803: @iSDP Adding related articles on the Docker Image Deployment page
- #2798: @znz Update CURL_CONNECT_TIMEOUT in docs
- #2795: @josegonzalez docs: Add documentation around adding build-time configuration variables
- #2791: @yazinsai Correct typo in persistent storage docs
- #2789: @h4ckninja Subject-verb agreement
- #2790: @flyinggrizzly Add entry for insecure connection issue in Rails
- #2788: @josegonzalez Flesh out uninstallation documentation
- #2784: @josegonzalez Document special dokku environment variables
- #2773: @znz Update year in footer [ci skip]
- #2768: @znz Ubuntu 12.04 is EOL
- #2769: @lucianopf Fix SlackButton for mobile devices.
- #2763: @ZiadSalah Update vagrant documentation for windows users
- #2764: @joshmanders Create PULL_REQUEST_TEMPLATE.md
- #2758: @AxelTheGerman Update doc location for dokku-git-rev community plugin
- #2757: @nodanaonlyzuul Fix typo from "To use a dockerfiles" to "To use a dockerfile" singular
- #2753: @abrkn Use short-hand method for shutting down all applications in upgrade docs
- #2746: @josegonzalez Add redirect for installation to advanced install docs
- #2738: @josegonzalez Add missing `NO_SSL_SERVER_NAME` to example template
- #2457: @john-doherty Update Digitalocean installation instructions
- #2725: @timaschew Fix typo in application management docs
- #2719: @joshco Clarify that nginx.conf.sigil must be committed to repository
- #2715: @josegonzalez Use urls that are linkable on github

## 0.9.4

### Documentation

- #2710: @josegonzalez Quiet output for git-related commands

## 0.9.3

### Bug Fixes

- #2706: @josegonzalez fix: ensure nginx conf.d directory exists when running nginx install hook
- #2701: @scjody Set SSH_USER for root commands

### New Features

- #2708: @josegonzalez Document that we will not do buildpack support in the issue tracker

### Documentation

- #2709: @michaelshobbs increase CURL_TIMEOUT and CURL_CONNECT_TIMEOUT defaults
- #2699: @mbreit Add support for git >= 2.11

## 0.9.2

### New Features

- #2698: @josegonzalez docs: Document that we only care about specific sections
- #2697: @callahad Restore installer note regarding AUFS on Linode
- #2694: @scjody Add documentation note re: git-pre-pull vs. auth

### Documentation

- #2695: @michaelshobbs add tests for pre/post deploy tasks

## 0.9.1

### Bug Fixes

- #2693: @josegonzalez fix: explicitly chown data and data/storage directories

## 0.9.0

### Bug Fixes

- #2691: @josegonzalez Fix package building when golang binaries are available
- #2671: @znz Fix variable name
- #2672: @callahad Fix logrotate on Debian
- #2666: @josegonzalez Use correct flag for build arguments when installing herokuish
- #2664: @pvalentim Fix remote name when using --remote option with apps:create

### New Features

- #2689: @mbreit Add dokku-monit to community plugin list
- #2683: @josegonzalez Ensure we have an example for adding keys as another user
- #2682: @josegonzalez Clarify supported stanzas in app.json
- #2679: @callahad Remove unnecessary Linode-specific instructions
- #2670: @znz Remove duplicated `(i.e.`

### Documentation

- #2685: @josegonzalez Pass shellcheck on os x
- #2677: @callahad Prefer HTTP2 to SPDY in nginx-vhosts
- #2673: @michaelshobbs Update to herokuish 0.3.27
- #2674: @michaelshobbs Update sshcommand to 0.7.0
- #2654: @ebeigarts Enable nginx and docker on system startup when using bootstrap.sh on CentOS
- #2546: @michaelshobbs Convert repo plugin to golang

## 0.8.2

### New Features

- #2660: @josegonzalez allow installation of plugins via tarball
- #2661: @josegonzalez Do not run builds in quiet mode

## 0.8.1

### Bug Fixes

- #2519: @tkalus Further guard against duplicate ssl server names
- #2554: @josegonzalez Add ssl ports when generating a self-signed certificate
- #2555: @josegonzalez Skip failing applications when running ps:restore on boot
- #2576: @znz Remove unused variable
- #2592: @josegonzalez always set a default ssl port for apps with ssl enabled
- #2612: @josegonzalez Ensure VHOST files exist before executing commands against them
- #2647: @josegonzalez Properly escape post-install variables
- #2650: @josegonzalez Fix help output for nginx and ssh-keys
- #2656: @josegonzalez ensure we can call the report subcommand without an app while specifying flags
- d79a79: @josegonzalez bail early when checking ps output for an undeployed app

### New Features

- #2500: @josegonzalez Suppress output unless the `git submodule update` call fails
- #2504: @mbtamuli Implement apps:report and storage:report
- #2508: @OmarShehata Add default functions for all commands
- #2557: @josegonzalez Dokku cli improvements
- #2573: @ebeigarts Recommend parallel package for faster ps:restore
- #2578: @josegonzalez Require specific versions for dokku-maintained packages
- #2583: @josegonzalez Implement apps:clone subcommand
- #2586: @bevand10 Add http-proxy support for deb-herokuish installs
- #2587: @josegonzalez Allow specifying the deploy branch via DOKKU_DEPLOY_BRANCH
- #2594: @michaelshobbs Upgrade to herokuish v0.3.25
- #2615: @josegonzalez Implement certs:report
- #2616: @josegonzalez Replace apps:default subcommand with apps:list
- #2617: @josegonzalez Implement checks:report
- #2618: @josegonzalez Implement docker-options:report and storage:report
- #2619: @josegonzalez Call ssh-keys:help from ssh-keys:default
- #2620: @josegonzalez Implement domains:report and proxy:report
- #2622: @raphaklaus Allow file names with multiple dots in certs:add command
- #2634: @michaelshobbs Update herokuish to 0.3.26
- #2657: @josegonzalez Add post-extract plugin trigger

### Documentation

- #2475: @pranavgoel25 Minor readme and sponsor changes
- #2556: @josegonzalez Use slightly better font style for docs
- #2560: @ebeigarts Improve install documentation on CentOS
- #2564: @ka7 Fix spelling mistakes
- #2565: @josegonzalez Update persistent storage to reference the sample app as normal
- #2566: @josegonzalez Move "new as of" note in storage docs to correct section
- #2569: @OmgImAlexis Reload nginx after adding default vhost file
- #2570: @OmgImAlexis Update ISSUE_TEMPLATE.md to reference `dokku report` command
- #2580: @znz Fix font URL
- #2588: @josegonzalez Clarify when the `~/.ssh/config` settings need to match `vagrant ssh-config output`
- #2605: @andyjeffries Documented build failures when using SSL_CERT_FILE environment variable
- #2613: @emveeoh Update Linode installation instructions for new GRUB 2 Linode boot option
- #2626: @znz Update apps:help example command
- #2629: @znz Update certs:help output for certs:default subcommand
- #2633: @drpoggi Reference the x-forwarded headers in correct order
- #2637: @josegonzalez Add documentation surrounding flags that ps:report accepts
- #2638: @fwolfst Improve README links
- #2639: @joshco Add documentation for how to grant other Unix accounts Dokku access
- #2648: @josegonzalez Note that the remote username is important
- #2659: @jfw Minor clarifications to application deployment tutorial

## 0.8.0

The big kahuna. Lots of documentation changes, and a few bug fixes to make Dokku development a bit easier.

CentOS 7 users will be happy to see that we now have experimental support for your operating system. Huge thanks to @ebeigarts for working on that feature :)

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2407: @josegonzalez Move core post-deploy triggers to core-post-deploy
- #2442: @znz Fix `is_tag_force_available` bug when docker major version up
- #2452: @mbtamuli Solves SSH Key problem when admin user already exists
- #2454: @onbjerg Return exit 1 in config:get if no ENV file exists
- #2464: @sseemayer Remove duplicate SSL hostnames
- #2465: @polettix Fix issue when importing ssh-keys
- #2477: @ebeigarts Fix dokku-redeploy systemd script to start only after docker
- #2485: @znz Fix bug when VHOST file is missing newline
- #2492: @josegonzalez Fix iteration on all apps for `dokku proxy` command
- #2495: @josegonzalez Create the user's `authorized_keys` file if it does not exist
- #2496: @josegonzalez Detect nginx versions that support HTTP/2 well
- #2518: @josegonzalez Use same check for dockerfile apps during a tar build
- #2526: @michaelshobbs Actually fail deploy when app.json script fails
- #2539: @ebeigarts Fix dokku-installer.service removal

### New Features

- #2378: @knjcode Skip container finish processing when zero downtime is disabled
- #2406: @josegonzalez Use apps_create method when renaming an application
- #2419: @ebeigarts Support for CentOS 7
- #2489: @joshmanders Add plugin uninstall trigger
- #2510: @IlyaSemenov Add domains:set and domains:set-global commands
- #2544: @michaelshobbs Update herokuish to 0.3.24
- #2552: @josegonzalez Allow package building on OSX
- #2553: @josegonzalez Add release-related Dockerfiles

### Documentation

- #2432: @josegonzalez Clarify DOKKU_SCALE docs
- #2433: @alexgleason Add robots.txt plugin to community docs
- #2437: @vishnubhagwan Fix warning in installation docs
- #2451: @mbtamuli Document the logs plugin
- #2470: @fteychene Add build-hook to plugins doc
- #2472: @mainto Add dokku-access to plugins doc
- #2484: @nahtnam Document build issues when a `Killed` message is displayed
- #2486: @OmarShehata Fixing typo & broken link in docs
- #2488: @joshmanders Bump font size in documentation
- #2493: @josegonzalez Clarify checks documentation
- #2497: @joshmanders Make features heading more clear
- #2503: @mlebkowski Update dokku-acl plugin link
- #2505: @kjschulz Add Dokku Wordpress plugin to docs
- #2506: @simonkotwicz Fix typos in deployment docs
- #2507: @josegonzalez Update upgrade docs to point out sshcommand and plugn upgrading as well
- #2509: @kjschulz Map dokku-community user in plugins
- #2511: @IlyaSemenov Clarify instructions for arranging default nginx site
- #2515: @sgloutnikov Update DreamHost Cloud install instructions
- #2517: @josegonzalez Update docs regarding if the ssh-keys plugin should be in use
- #2522: @joshmanders Ensure install documentation can be run via copy-paste
- #2525: @OmarShehata Plugin-triggers typo: dokkku -> dokku
- #2531: @slava-vishnyakov Document rebuilding app after mounting storage
- #2533: @facundomedica Document potential firewall problem on Ubuntu 16.04

## 0.7.2

This minor release contains mostly documentation changes, and should be fully backwards compatible with previous 0.7.x releases.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2392: @swg Specify python2 for get_json functions
- #2408: @jcscottiii Use $DOKKU_VHOST_ENABLE instead of $VHOST_ENABLE in bootstrap.sh
- #2417: @PWAckerman Remove extra quotes from DYNO environment variable
- #2426: @michaelshobbs add force option on docker tag when available

### New Features

- #2418: @michaelshobbs Update to plugn 0.2.2
- #2423: @michaelshobbs Update to herokuish 0.3.19

### Documentation

- #2393: @josegonzalez Deprecate all process manager plugins
- #2394: @josegonzalez Deprecate old graphite plugin and add official graphite plugin
- #2395: @josegonzalez Deprecate sekjun9878/redis
- #2396: @josegonzalez Deprecate multi-buildpack plugin
- #2397: @josegonzalez Update compatibility of dokku feature plugin
- #2398: @josegonzalez Update compatibility of "other plugins"
- #2404: @bascht Fix docker build syntax in image tags documentation
- #2405: @josegonzalez Fully document the ps plugin
- #2409: @josegonzalez Document caveats around ps:rebuild and tags/tar deployed applications
- #2416: @njaxx Adds a mention of manually adding nginx entry
- #2420: @c990802 Update command example for consistency
- #2410: @IlyaSemenov Clarify domains help, improve domains unit tests
- #2429: @enisozgen Minor documentation fixes
- #2431: @josegonzalez Add missing redirect for deployment/deployment-tasks

## 0.7.1

### Bug Fixes

- #2348: @josegonzalez Correct the version in use for ssh-keys
- #2369: @u2mejc Fix ssh-keys:add permission error
- #2377: @ebeigarts Do not use http_proxy env variables for CHECKS
- #2360: @xadh00m Allow hyphen in TLD
- #2387: @michaelshobbs Silence find warnings under Ubuntu 16.04
- #2390: @josegonzalez Actually stop the dokku-installer service

### New Features

- #2358: @josegonzalez Guard against poodle vulnerability by default
- #2385: @michaelshobbs Actually merge dokku-app-user into core

### Documentation

- #2337: @josegonzalez Update deprecated plugins list
- #2352: @miguelcobain Fix typos in plugin-triggers docs
- #2353: @miguelcobain Add a note about making plugins executable
- #2345: @johnfraney Update list of officially supported distributions
- #2354: @josegonzalez Dockerfile deploys do not support mounted volumes
- #2371: @michaelshobbs Moved some plugin repos to michaelshobbs
- #2381: @michaelshobbs Fail rest of bats file on first test failure
- #2382: @alexgleason Fix typo "exampple" to "example"
- #2386: @josegonzalez Add a migration guide for 0.7.0
- #2388: @josegonzalez Add documentation for proxy ports scheme handling
- #2389: @josegonzalez Add plugin management documentation

## 0.7.0

Another great minor release! There are no known backwards incompatibilities with this release, though the following may be of interest to our users:

- #2316 #2326: Support for setting the correct user/group permissions on files stored in persistent storage
- #2290: Container restart policy support in the core

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2302: @u2mejc Fix is_valid_hostname regex
- #2331: @josegonzalez Fix repo plugin version
- #2334: @josegonzalez Cleanup image retrieval
- #2332: @josegonzalez Properly handle non-deployed applications during apps:rename

### New Features

- #2316: @michaelshobbs Use default privileged user in herokuish-0.3.17
- #2335: @xtian Update herokuish to 0.3.18
- #2317: @josegonzalez Properly remap http port 80 mappings to https 443 when adding an ssl certificate
- #2290: @josegonzalez Implement restart-policy handling
- #2287: @u2mejc Add ssh-keys core plugin
- #2283: @xadh00m Add support for multiple global domains
- #2277: @josegonzalez Add support for config values with double-quotes
- #2273: @josegonzalez Add the ability to manually execute checks against an application

### Documentation

- #2308: @josegonzalez Clarify that nginx.conf.sigil is only extracted from repo root for buildpack applications
- #2314: @dm-wyncode Add flags to apt-get command in unattended docs so that the installation is truly unattended
- #2315: @smaffulli Adding DreamHost Cloud installation with cloud-init
- #2325: @fanminjian Update to without -qq for proper Grub prompt.
- #2326: @josegonzalez Document the user and group id to use for persistent storage permissions
- #2336: @josegonzalez Clarify documentation

## 0.6.5

This was a big documentation release with a minor bugfix to the `app.json` functionality introduced in 0.5.0.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2301: @michaelshobbs Fix app.json extraction in dockerfile apps not using /app

### New Features

- #2297: @josegonzalez Add plugin trigger to override the image repository

### Documentation

- #2296: @josegonzalez Add an example plugin trigger for cache busting Dockerfile builds
- #2295: @josegonzalez Add documentation for the apps, repo, and tar plugin
- #2292: @josegonzalez General documentation cleanup
- #2291: @josegonzalez Clean up documentation surrounding persistent storage
- #2289: @PeterDaveHello Optimize png images using zopflipng
- #2282: @prodicus Fixed link to sponsors doc

## 0.6.4

Included in this release are a couple of bug fixes for existing features.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2275: @sseemayer Prefer file import in certs:add if files given
- #2279: @michaelshobbs Only attempt to stop a checks-disabled container if it is actually running

### New Features

- #2270: @guillaumewuip Allow apps:destroy when not in a project
- #2271: @josegonzalez Handle purging the dokku user, group, and logs directory during `apt-get purge`

### Documentation

- #2272: @josegonzalez Add documentation surrounding when the /app/.env file is populated

## 0.6.3

This release is mostly a documentation release.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2258: @michaelshobbs Support domains that start with digits per RFC1123

### New Features

- #2260: @josegonzalez Add ability to remove a specific port mapping tuple
- #2261: @josegonzalez Drop apparmor requirement to support systemd systems

### Documentation

- #2262: @josegonzalez Document that REV is optional in the receive-app trigger
- #2264: @troy Use Markdown for sponsors page, so it's clickable from GitHub
- #2266: @michaelshobbs Add documentation surrounding proxy port mapping

## 0.6.2

This release is a minor bugfix for the web setup, and also reverts a previous addition to the persistent storage. Please see the pull requests for more details.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2256: @michaelshobbs Revert automatically binding storage mounts in build phase
- #2259: @andrewsomething Don't run DeleteInstallerThread() until after set_debconf_selection

## 0.6.1

This release is a minor bugfix to fix an issue with ssl support for spdy-enabled nginx servers. Users are encouraged to upgrade if they have an older version of nginx installed.

### Bug Fixes

- #2250: @michaelshobbs Fix missing $ sign in default nginx template

## 0.6.0

The big-six-o. This release is largely comprised of new features that should allow for easier management of dokku. The highlights of this release are:

- The proxy plugin has been enhanced to allow users to map container ports to host ports. In the 0.5.0 release, we changed the semantics of how Dockerfile `EXPOSE` calls work to better follow Docker's lead, which ended up breaking how some applications were deployed to dokku. Please read our documentation surrounding [port management](https://dokku.com/docs/proxy/) for more details.
- Zero-downtime deploys can be disabled on a per-app and per-process basis. This can be used to speed up deploys when there are non-web processes being deployed, or when a user wishes to completely avoid any such waiting period. Please see the [checks documentation](https://dokku.com/docs/deployment/zero-downtime-deploys/) for further information.

Thanks to all the contributors who helped with this release, and a special thanks to @michaelshobbs for ferrying the majority of our new functionality to it's current state!

### Bug Fixes

- #2241: @josegonzalez Set debconf selections from dokku-installer.py
- #2242: @michaelshobbs Avoid calling dokku binary
- #2243: @josegonzalez Nginx 1.9.5+ support

### New Features

- #2018: @pascalw Support running Procfile commands using `dokku run`
- #2050: @josegonzalez Implement repo:gc and repo:purge-cache
- #2109: @josegonzalez Allow user to modify the repository and tag when deploying an app
- #2168: @michaelshobbs Allow zero-downtime deploys to be completely disabled
- #2248: @michaelshobbs Allow users to map container ports to host ports via the proxy plugin

### Documentation

- #2209: @piamancini Added backers and sponsors from OpenCollective
- #2244: @basgys Add InfluxDB to plugins

## 0.5.8

This release is the last release in the `0.5.x` series, and as such is mainly a bugfix release. Users are highly encouraged to upgrade to this release _before_ moving to the upcoming `0.6.x` release, as we will be removing deprecated features at that point.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2214: @michaelshobbs Remove git push from client
- #2220: @josegonzalez Remove DOKKU_PROCFILE before attempting to extract it
- #2227: @michaelshobbs Pass image tag from release_and_deploy down through extract_procfile
- #2228: @michaelshobbs Support WORKDIR location for DOKKU_SCALE
- #2229: @hansmi Fix removal of domains with schema
- #2234: @michaelshobbs Cleanup container state files when a process type is removed from app
- #2236: @michaelshobbs Hide unnecessary output from is_image_herokuish_based()
- #2233: @josegonzalez Lintian cleanup

### New Features

- #2205: @josegonzalez Fix lintian errors in built debian packages
- #2223: @josegonzalez De-duplicate nginx restarting
- #2237: @michaelshobbs Reject invalid domains in domains:add
- #2238: @michaelshobbs Mount storage mounts on build for buildpack deploys

### Documentation

- #2212: @jbothma Warn and instruct users about unsafe publicly-accessible web installer
- #2222: @michaelshobbs Move nginx upstream blocks to the bottom in docs examples

## 0.5.7

0.5.7 includes quite a few documentation updates, and a few minor changes in how we handle certain edge-cases in day-to-day dokku tasks.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2157: @michaelshobbs test detached container is running
- #2170: @jvanbaarsen Do not fail domains:add when adding a duplicated domain
- #2171: @tobru Continue to restore applications during boot when any given application does not start
- #2173: @michaelshobbs Add test for ps:restore with undeployed app
- #2202: @michaelshobbs Attempt to bypass inconsistencies in nginx start behavior

### New Features

- #2155: @josegonzalez Add the ability to run containers in detached mode
- #2163: @michaelshobbs Support deployment of arbitrary docker images not built by dokku build
- #2175: @michaelshobbs Show available types and ids on dokku enter error
- #2193: @josegonzalez Upgrade herokuish version built via deb packaging
- #2203: Allow specifying NO_INSTALL_RECOMMENDS via DOKKU_NO_INSTALL_RECOMMENDS in bootstrapped installs

### Documentation

- #2164: @iloveitaly Adding longtimeout and hostname to dokku plugin list
- #2167: @iloveitaly Adding link to rollbar plugin
- #2182: @cu12 Add link to FakeSNS plugin
- #2183: @Epigene Update nginx docs to mirror generated nginx.conf from core
- #2187: @pltchuong Add missing trigger to plugin triggers documentation
- #2190: @cu12 Add ElasticMQ plugin to documentation
- #2191: @josegonzalez Clarify upgrade docs for bootstrap.sh installations
- #2192: @josegonzalez Clarify that the checks are only run against the web process
- #2194: @josegonzalez Clarify the role of process types for buildpack deployment
- #2195: @josegonzalez Clarify when certain plugin triggers are invoked

## 0.5.6

Release 0.5.6 is mostly a documentation release. Please note, however, that we now inject application environment variables into sigil-generated nginx configurations. You can use this to further improve your generated nginx configuration files.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2120: @u2mejc Add apex help_content for certs,nginx,storage,tar plugins
- #2122: @michaelshobbs Add 10.0.0.2 so *.dokku.me works
- #2145: @michaelshobbs Fix dockerfile-procfile test

### New Features

- #2150: @michaelshobbs export app config vars into sigil environment for use in nginx templates

### Documentation

- #2099: @ojosdegris Added clarification on configuration via separate files
- #2107: @simenbrekken Add CI deployment recipe
- #2112: @josegonzalez Alphabetize triggers
- #2114: @josegonzalez Add table of contents to sidebar when there is a table of contents
- #2115: @josegonzalez Document potential dockerfile/nginx.conf.sigil issues
- #2116: @josegonzalez Warn users when there is a low memory condition on installation
- #2127: @crisward Added dokku require plugin
- #2129: @christiangenco Condense upgrading instructions
- #2136: @josegonzalez Use `sleep infinity` for enter cron task
- #2142: @Aluxian Add dokku-nginx-cache to the list of plugins

## 0.5.5

Release 0.5.5 is mostly a documentation release, further clarifying how our default proxy implementation (nginx) interacts with Dockerfiles. Note that we also updated how ssl certificates interact with application domains, so please check out our domains and ssl documentation.

We've also added a small section to the [dokku homepage](https://dokku.com/docs/) that lists the current core team. Feel free to look at their beautiful faces and imagine yourself contributing to Dokku and joining our core team. There are [quite a few ways to contribute](https://github.com/dokku/dokku/blob/master/CONTRIBUTING.md) - even without code/documentation - so feel more than free to jump on the bandwagon!

Finally, we've started an [Official Dokku Blog](https://dokku.github.io/), where we will post about dokku internals, roadmaps, potential use-cases, etc. An rss feed is available [here](https://dokku.github.io/feed.xml).

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2094: @josegonzalez Create storage directories on install. Closes #2091
- #2102: @josegonzalez Only strip .git directory from end of url

### New Features

- #2088: @josegonzalez Upgrade herokuish package
- #2089: @michaelshobbs Update how ssl and multiple domains interact

### Documentation

- #2076: @josegonzalez Add a note to dockerfile deploys concerning ports being exposed as http
- #2080: @michaelshobbs Clarify the need for contents of dockerfile when debugging
- #2082: @michaelshobbs Add use case example for ssl redirect
- #2083: @louisbl Clarify 0.5.0 migration guide about `EXPOSE`
- #2084: @louisbl Clarify where to put nginx custom template without `WORKDIR`
- #2093: @fwolfst Fix path in storage example
- #2098: @josegonzalez Add a blog link to the header area
- #2100: @kane-c Fix docs navigation link to domain configuration
- #2104: @crisward Added new clone plugin
- #2105: @josegonzalez Add a note about how disabling the proxy affects the host port an application is deployed to

## 0.5.4

This release continues on our tradition of making bugfixes in patch releases. Also note that we now release dokku with `sshcommand` version `0.4.0`, which should increase usability of that package quite a bit.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2055: @tobru Move nginx include to server section
- #2060: @michaelshobbs Filter restart policies from exec-app-json containers
- #2061: @znz Fix ignored settings in the CHECKS file
- #2065: @michaelshobbs Fix pre/post deploy support for dockerfile apps

### New Features

- #2052: @josegonzalez Use upstream releases when creating deb packages. Closes #2048
- #2068: @josegonzalez Use latest sshcommand when installing via debian
- #2070: @josegonzalez Upgrade sshcommand to 0.4.0

### Documentation

- #2049: @mmlkrx Fix typo in deployment-tasks.md
- #2051: @plieningerweb Clarify installation instructions in docs
- #2058: @michaelshobbs Remove references to global TLS certs
- #2072: @michaelshobbs Note that we only support one EXPOSE port per line in dockerfiles

## 0.5.3

This release sorts out a few minor bugs introduced in the 0.5.0 release.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #2030: @josegonzalez Fix setting of APPS in checks command when $1 is left unspecified
- #2035: @stesie Fix ps_restart to not exit early
- #2042: @michaelshobbs Ensure CHECKS file has trailing newline
- #2046: @michaelshobbs Strip inline comments and trailing whitespace from CHECKS and Procfile
- #2047: @michaelshobbs Remove deprecated mktemp args and name vars more clearly

### Documentation

- #2032: @josegonzalez Fix upstream positioning in docs. Closes #2031
- #2039: @christiangenco Clarify upgrading documentation
- #2043: @michaelshobbs Clarify dockerfile port exposure documentation
- #2045: @u2mejc Reword dockerfiles docs to clarify EXPOSE handling in 0.5.x

## 0.5.2

This is a packaging fix release.

### Bug Fixes

- #2027: @michaelshobbs Add sigil to debian control file

## 0.5.1

That was quick! This is a bugfix release to fix issues in the packaging and release phases of dokku.

### Bug Fixes

- #2023: @josegonzalez Fix sigil packaging
- #2024: @josegonzalez Delete bad symlinks without confirmation

## 0.5.0

This is our largest, most feature-packed release in the history of the dokku project. Lots of delicious things, including:

- Support for docker 1.10/1.11. You _must_ have docker 1.9.1+ to install dokku.
- Revamped documentation website
- [Deployment Tasks](https://dokku.com/docs/advanced-usage/deployment-tasks/)
- Heroku-style management of [dockerfile processes](https://dokku.com/docs/deployment/builders/dockerfiles/#procfiles-and-multiple-processes)
- Official [persistent storage plugin](https://dokku.com/docs/advanced-usage/persistent-storage/)

We'd also love it if you welcomed a few new core developers:

- @MorrisJobke: Maintainer of our new arch linux support
- @u2mejc: Contributed the help refactor and persistent storage plugins

Thanks to all the contributors who helped with this release!

## Refactor

- #1892: @michaelshobbs Refactor nginx proxy plugin to add usage flexibility
- #1925: @josegonzalez Simplify bootstrap.sh installation method
- #1953: @michaelshobbs Refactor commands into subcommands and add support for --app argument
- #1983: @u2mejc Collapse help into expandable command topics
- #1936: @michaelshobbs Cleanup shellcheck SC2086

### Bug Fixes

- #1934: @michaelshobbs Fix get_running_image_tag() with docker 1.10.x
- #1935: @michaelshobbs Remove unnecessary nginx test
- #1941: @cu12 Fix issue with plugins having plugins command
- #1980: @cu12 Fix issue when Dockerfile present but BUILDPACK_URL is set
- #1991: @MorrisJobke Only chown of existing files
- #1993: @istarkov Fix bash incorrect test command
- #2006: @baob Fix too many redirects
- #2012: @michaelshobbs minor bug fixes around app.json and docker-options

### New Features

- #1830: @u2mejc Add core storage plugin to manage docker bind mounts
- #1836: @michaelshobbs Support scripts.dokku. in app.json
- #1918: @MorrisJobke Adds support for ArchLinux as host OS
- #1924: @pmclanahan Use Procfile for process types in Dockerfile apps
- #1939: @pmclanahan Add dokku git remote when specifying app name in bash client
- #1958: @u2mejc Enable debug output for dokku global exports in trace
- #1959: @josegonzalez Allow customizing ssh port for the default client
- #1981: @josegonzalez Only remove containers with dokku label
- #1987: @josegonzalez Do not restart stopped processes on config:set/unset

### Documentation

- #1687: @u2mejc Deprecate and remove dokku backup plugin, replace with documentation.
- #1931: @josegonzalez Standardize on "relative" doc links
- #1938: @npazo Add information about Slack channel
- #1947: @basgys Add etcd to the list of plugins
- #1951: @znz Fix typos
- #1960: @josegonzalez Clarify which commands should be run where. Closes #1890
- #1963: @josegonzalez Add floating sidebar on documentation linking to released versions
- #1965: @trevorturk Clarify checks documentation
- #1974: @simenbrekken Update link in Azure installation instructions. Fixes #1973
- #1979: @josegonzalez Add specific documentation around user management. Closes #1978
- #1985: @MikeSchroll Make history readable in github
- #1990: @ligthyear Highlight features that are yet to come
- #1992: @Sureiya Improved documentation for using official dokku_client.sh
- #2000: @iamale Add dokku-monorepo to the plugin list in docs
- #2002: @michaelshobbs clarify deployment tasks are supported in both buildpack and dockerfile apps
- #2003: @michaelshobbs Add more useful post-deploy task and make blockquote
- #2004: @josegonzalez Document 0.5.x container removal strategy. Closes #1982
- #2007: @josegonzalez Document when configuration variables are available. Closes #1860
- #2009: @samholmes1337 Clarify purpose and potential penalties of primary vhost
- #2011: @josegonzalez Updated installation docs
- #2013: @michaelshobbs Make help desc local consistent

## 0.4.14

Hah you got us. We have to ship another 0.4.x release to fix issues with
running commands via `dokku run`. For quite a few releases, we've been
ignoring the `--rm` flag, meaning containers were lying around if you were
using `dokku run` in cron. This release fixes it, and is important enough
to warrant a 0.4.x release.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1888: @u2mejc Remove broken symlinks when using copyfiles
- #1887: @u2mejc Fix <command>:help hangs for certs, enter, tags, tar
- #1901: @josegonzalez Add shebang to config/functions so editors see it as a shell script
- #1907: @michaelshobbs Fix dokku run --rm regression
- #1911: @2mia Add support for github url patterns when installing plugins
- #1912: @mattberther Pass -i -t to docker exec only if tty present
- #1923: @michaelshobbs Fix typo in generate_scale_file()

### Documentation

- #1882: @josegonzalez Add a note to warn users to peg to specific versions of buildpacks
- #1883: @michaelshobbs Show plugn version when listing plugins
- #1900: @josegonzalez Upgrade our CoC to 1.4 of the Contributor Covenant
- #1913: @michaelshobbs document appropriate crontab usage
- #1921: @josegonzalez Create ISSUE_TEMPLATE.md
- #1922: @josegonzalez Link to our new ISSUE_TEMPLATE.md

## 0.4.13

We lied. _This_ is the final 0.4.x release. This specific release fixes support for bash `4.2`, which may be the only bash version available for certain testing environments.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1871: @michaelshobbs Support bash 4.2 so we don't have to modify all plugin test envs
- #1872: @kenips Update log to better reflect what's going on with CHECKS

## 0.4.12

This is a small bugfix release, which will be the final release before the 0.5.x line. You can follow along on bugs/features we hope to cleanup for 0.5.x [here](https://github.com/dokku/dokku/milestones/v0.5.0).

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1868: @alessio Prevent dokku to hang on events:help
- #1870: @u2mejc Remove arg check from docker-options/functions, global var cleanup

## 0.4.11

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1840: @alessio Append trailing slash '/' to $PLUGIN_DIR
- #1841: @michaelshobbs Don't build nginx config if the app has not been deployed
- #1844: @michaelshobbs Handle multiple old containers and don't attempt to rename a dead container
- #1845: @michaelshobbs Update nodejs in test apps
- #1849: @floriangosse Fix logrotate file for debian system
- #1862: @michaelshobbs Install bash 4.3.x on circleci
- #1863: @znz Fix a typo in IPV6 detection

### New Features

- #1842: @michaelshobbs skip cleanup in ci to speed up tests
- #1848: @u2mejc Move docker-options functions to functions file, rework phase_file_path
- #1855: @jvanbaarsen Add skip_keyfile option for deb package
- #1864: @znz Remove nullglob from ps commands

### Documentation

- #1838: @Epigene Fixed typo in installation documentation
- #1843: @sseemayer Move let's encrypt plugin to official plugins
- #1854: @fedosov Update year in footer (2013-2016)
- #1856: @madflow Fixed dead documentation link
- #1859: @dhinus Fix command for debconf-set-selections

## 0.4.10

This release is mostly a bugfix release, though we have a few important changes:

- `dokku plugin:update` can now be used to update a specific plugin. Previously, this could potentially result in an error a user would have to manually resolve.
- We have started labeling all dokku-managed containers. In a future minor release, triggering a `dokku cleanup` will remove _only_ exited containers that are managed by dokku. This change allows users to start containers outside of dokku and be assured that dokku would not inadvertently remove them.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1818: @josegonzalez Fix pre-receive git-hook in apps:rename
- #1819: @andrewsomething Write out /home/dokku/HOSTNAME as specified by the web installer.
- #1823: @josegonzalez Fix output formatting of dokku apps
- #1827: @michaelshobbs Use docker 1.9.0 on circleci
- #1834: @jvanbaarsen Make sure we ignore hidden files in the SSL cert check
- #1835: @josegonzalez Add support to herokuish for more versions of docker-engine
- #1837: @michaelshobbs Add back some deploy tests that test dokku functionality

### New Features

- #1826: @michaelshobbs Implement plugn update
- #1828: @michaelshobbs Label all dokku-managed containers
- #1829: @michaelshobbs Implement dokku report command

### Documentation

- #1822: --no-restart option after config:set not before

## 0.4.9

This release is significant for two reasons:

- A bugfix for git submodule support that was broken in 0.4.7
- Improved and tested support for modern variants of Ubuntu/Debian. This should also improve support for docker-based deployments of dokku, as well as potential support for the upcoming Ubuntu 16.04 release.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1810: @josegonzalez Fix debian packaging for usage inside of docker containers
- #1814: @blackxored Add support for new method of extracting container IP
- #1807: @josegonzalez Allow updating submodules at any revision

### New Features

- #1812: @josegonzalez Fully-tested debian packaging for modern Ubuntu/Debian distributions

### Documentation

- #1811: @josegonzalez Add dokku haproxy to plugins

## 0.4.8

If upgrading to 0.4.8, please note that we have tightened the application naming schema, per docker requirements. Upgrade your dokku installation to 0.4.7 first to take advantage of the `dokku apps:rename` command if you are having issues with the new requirement.

### Bug Fixes

- #1804: @josegonzalez Fix deprecated version constraint usage in debian control file
- #1798: @michaelshobbs Ensure app name begins with lowercase alphanumeric character
- #1808: @josegonzalez Fix path to dokku-installer

### New Features

- #1801: @josegonzalez Allow setting DOKKU_LIB_ROOT env var to modify the lib path on install
- #1803: @michaelshobbs update plugn download url and version

### Documentation

- #1809: @josegonzalez Remove non-zero downtime version of letsencrypt plugin

## 0.4.7

A few notable new features:

- The new `dokku apps:rename` command. It does not update linked containers, but is useful in many other cases.
- Updated git clone methodology to be more performant for large repositories.
- Moved the dokku-installer from Ruby to Python, allowing us to drop Ruby as a dependency. Python comes with the linux standard base, and should therefore be accessible on more systems.

### Bug Fixes

- #1776: @t-8ch Fix docker version constraints on jessie systems
- #1777: @michaelshobbs Format test labels
- #1782: @michaelshobbs make docker cp work on circleci
- #1788: @michaelshobbs Updates for moving of dokku sshcommand and plugn repos
- #1791: @michaelshobbs Don't run app deploy tests and spread out unit tests to 4 containers
- #1793: @michaelshobbs Filter out Procfile comments

### New Features

- #1670: @zachfeldman Add apps:rename
- #1771: @jvanbaarsen Make plugin hooks send out more information
- #1778: @mmerickel Optimize git clone for large repositories
- #1781: @jvanbaarsen Add post config update hook
- #1789: @lvillani Make it possible to skip a deploy
- #1790: @michaelshobbs Use pgup/pgdown for history shortcut in dev env
- #1794: @josegonzalez Replace dokku-installer.rb with dokku-installer.py
- #1797: @michaelshobbs Ensure we run plugin commands as root
- #1799: @josegonzalez Add support for tutum-agent as docker alternative
- #1800: @josegonzalez Respect DOKKU_ROOT in debian/postint

### Documentation

- #1779: @sseemayer Add link to new zero-downtime Let's Encrypt Plugin to docs
- #1780: @jvanbaarsen Add documentation for the new domain plugin hooks
- #1784: @duboff Tiny fix in SSL documentation

## 0.4.6

This is mostly a documentation change. A few notable changes:

- Rebooting dokku servers should properly handle not starting stopped services.
- Better support for newer versions of Debian/Ubuntu.
- Moved the dokku project to the dokku github organization.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1717: @josegonzalez Avoid using the PPA for ubuntu versions 15.10 and higher
- #1727: @louisbl Enable dokku-redeploy systemd service.
- #1732: @michaelshobbs do not chown file that doesn't exist
- #1745: @beverku Change herokuish to recommended package
- #1767: @jvanbaarsen Remove shebang from config/functions
- #1775: @Flink Match complete container name in named-containers plugin

### New Features

- #1718: @josegonzalez Add post-create hook
- #1735: @michaelshobbs use ps:restore on instance boot

### Documentation

- #1720: @josegonzalez Add memory usage output as desired data for reporting issues
- #1723: @josegonzalez Add herokuish version to desired debugging info
- #1739: @michaelshobbs clarify location of nginx.conf.template in app repo
- #1747: @josegonzalez Add Lets Encrypt plugin
- #1748: @byrnedo Added unofficial Nats plugin to plugins.md
- #1750: @jlachowski New graphite & statsd plugin with grafana frontend added
- #1751: @josegonzalez Use flat-square style on image badges
- #1752: @byrnedo Moved dokku-nats into official plugins section
- #1753: @hhff Add .ca-bundle information to SSL docs
- #1754: @josegonzalez Update all links to dokku repo
- #1757: @josegonzalez Add DigitalOcean as a sponsor
- #1761: @josegonzalez Fix link to docker-options documentation

## 0.4.5

This release is mostly a bugfix release. Two notable changes:

- It is now possible to build complex authentication layers around dokku using the new user auth plugin trigger introduced in #1671.
- We have a Code of Conduct in our repository. Please refer to this document if you have any questiosn regarding what is acceptable in the Dokku community.

Thanks to all the contributors who helped with this release!

### Bug Fixes

- #1666: @michaelshobbs Revert dokku group changes and add dokku user to adm group
- #1667: @u2mejc Fix dokku certs:add file input bug
- #1682: @michaelshobbs Aet nullglob when looking for PORT files
- #1684: @u2mejc Cause certs:remove to return non zero on error
- #1690: @u2mejc Fix "App tls has not been deployed" error
- #1696: @michaelshobbs chown plugins paths to dokku:dokku
- #1698: @pmvieira Ensure curl is installed inside of source-based installations
- #1700: @michaelshobbs copy nginx.ssl.template from app container
- #1701: @michaelshobbs Don't call nginx_build_config twice
- #1702: @josegonzalez Remove extra whitespace in command output
- #1703: @josegonzalez Fix casing on help output
- #1706: @michaelshobbs Respect DOKKU_RM_CONTAINER in run phase
- #1707: @Flink Do a perfect match on the container name in named-containers plugin
- #1708: @michaelshobbs ensure permissions are locked down on tls folder and contents
- #1709: @michaelshobbs Fix Must specify DOMAIN error over ssh
- #1712: @michaelshobbs filter incompatible docker option when building dockerfile vs herokuish apps
- #1715: @michaelshobbs use patched static buildpack in test

### New Features

- #1665: @callahad Replace curl with wget
- #1671: @josegonzalez User Auth plugin trigger
- #1683: @u2mejc Add bats test for certs plugin
- #1699: @michaelshobbs print where we find DOKKU_SCALE when we find it

### Documentation

- #1642: @cjblomqvist Add new plugin adding app name to env
- #1674: @josegonzalez Expand buildpack deployment documentation
- #1675: @josegonzalez Create CODE_OF_CONDUCT.md
- #1677: @ignlg Added dokku-builders-plugin to plugins page
- #1681: @josegonzalez Fix email in code of conduct
- #1694: @MarcDiethelm Improve docker-options doc
- #1713: @mbriskar Wkhtmltopdf plugin

## 0.4.4

This release adds a few interesting changes:

- The `dokku logs` command now roughly maps to the `heroku logs` command, and supports most available options.
- Native Microsoft Azure support is now available!
- Quite a few shellcheck issues were fixed thanks to @callahad!
- Experimental debian installation support. Going forward, we will try and make dokku compatible with all systemd installations, as well as investigate dockerfile-based deployment to continue simplifying installation.

Thanks to all our contributors for making this release great!

### Bug Fixes

- #1606: @josegonzalez Install plugn 0.2.0 in Makefile installs
- #1643: @Flink Fix generated nginx config when NO_VHOST=1
- #1644: @mmerickel Watch dokku events through a logrotate
- #1647: @callahad Resolve SC2115: 'Use "${var:?}" to ensure this never expands to /'
- #1648: @callahad Resolve SC2154: 'variable is referenced but not assigned'
- #1649: @callahad Resolve SC2164: 'Use cd ... || exit in case cd fails.'
- #1650: @callahad Resolve SC2148: 'target shell is unknown'
- #1651: @callahad Resolve SC2029: 'this expands on client side'
- #1652: @callahad Resolve SC2143: 'Instead of [ -n $(foo | grep bar) ], use foo | grep -q bar'
- #1653: @callahad Resolve SC2145: 'Argument mixes string and array.'
- #1655: @callahad Resolve SC2162: 'read without -r mangles backslashes'
- #1656: @callahad Resolve SC2001: 'See if you can use ${var//search/replace} instead'
- #1660: @callahad Fixup debian/control for Debian
- #1662: @xadh00m Only return users of group 'adm'

### New Features

- #1607: @josegonzalez Dokku support for Debian Jessie installation
- #1610: @kdomanski Add post-stop plugn trigger
- #1612: @Flink Add multiple options to the logs plugin
- #1613: @kdomanski Add ps:restore to start applications which weren't manually stopped
- #1628: @michaelshobbs Move RESTORE variable to DOKKU_APP namespace
- #1634: @callahad Allow installation of bats via homebrew
- #1645: @rvalyi Add ability to access git repo via ssh
- #1664: @michaelshobbs Add $REV to pre-receive-app call

### Documentation

- #1605: @josegonzalez Make commented output a bit more readable
- #1621: @josegonzalez Document `--force` option for `:destroy` commands
- #1623: @sedouard Add Azure Documentation
- #1624: @u2mejc Add trace to help output
- #1626: @josegonzalez Add official dokku-copy-files-to-image plugin
- #1630: @adamwolf Enabling tracing is actually 'dokku trace on'
- #1633: @elia Add a warning regarding the use of `trace on`
- #1635: @callahad Remove deprecated Linode stackscript
- #1657: @kimausloos Various small doc updates

## 0.4.3

This release was mainly a documentation release/bugfix.

One major removal was is that as of 0.4.3, we no longer restart containers automatically on failure via docker. This feature was introduced in 0.4.0, and caused issues with duplicate containers being started on server reboot. Until the docker api for container restarts stabilizes, we will not be able to provide this functionality within Dokku.

If desired, you may replicate this functionality using the official `docker-options` plugin.

### Bug Fixes

- #1560: @darklow Fixes issue where SSL and non-SSL templates cannot be used at the same time
- #1566: @michaelshobbs Fix logic error in enabling nginx
- #1568: @josegonzalez Remove 'connection closed' messages from dokku ssh client
- #1574: @josegonzalez Ensure the user has a valid hostname set during installation
- #1585: @michaelshobbs Ensure dokku can read nginx logs and don't remove other perms
- #1589: @michaelshobbs Patch broken nginx 1.8.0 logrotate script
- #1591: @michaelshobbs Remove docker restart policy until the docker api stabilizes
- #1603: @josegonzalez Add missing plugin triggers
Quiet client #1568

### New Features

- #1490: @vijayviji Add windows-specific vagrant setup
- #1563: @kdomanski Cleanup all dead containers in dokku cleanup
- #1590: @michaelshobbs Trigger docker-args-build for dockerfile deployments
- #1600: @josegonzalez Upgrade to Herokuish 0.3.4
- #1602: @josegonzalez Add pre-receive-app plugin trigger

### Documentation

- #1556: @josegonzalez Use proper cdn link for css asset
- #1557: @josegonzalez Code styling changes
- #1561: @josegonzalez Set dokku-acl compatibility to 0.4.0+
- #1562: @josegonzalez Documentation Overhaul
- #1573: @mateusortiz Add link to license
- #1577: @Flink Add official redirect plugin
- #1587: @josegonzalez Update "reporting other issues" to include `docker inspect`
- #1598: @adamwolf Add missing bootstrap.sh step
- #1599: @ssd532 Fix a few grammatical mistakes
- #1601: @ojacquemart Fix typo
- #1604: @josegonzalez Add every type of favicon to all templates

## 0.4.2

This release was mainly a documentation release, with a few notable features:

- You can now use the commercial version of docker-engine with dokku.
- You can now name your containers using the official `named-containers` plugin

Huge thanks to @Flink for working on our official plugins and adding official [basic auth](https://github.com/dokku/dokku-http-auth), [couchdb](https://github.com/dokku/dokku-couchdb), and [site maintenance](https://github.com/dokku/dokku-maintenance) plugins!

### Bug Fixes

- #1530: @Flink Fix nginx configuration for SSL

### New Features

- #1515: @leonardodino Allow local prebuilt stack sourcing
- #1536 #1537: @josegonzalez Add docker-engine-cs as docker-engine alternative
- #1511: @Flink Add `named-containers` as a core plugin

### Documentation

- #1520: @kimausloos Add `dokku` command-prefix to `plugin:install` command
- #1519: @3onyc Fix typos in documentation
- #1521: @edm00se Use correct url to bootstrap.sh in README.md
- #1522: @josegonzalez Avoid redirects and use raw.githubusercontent.com for github links
- #1523 #1548: @callahad Make room for the longer bootstrap.sh URL
- #1524: @callahad Document idiosyncracies with Linode
- #1529: @pzula Adds helpful information regarding whitespacing when setting config
- #1525 #1550: @josegonzalez Add gratipay shield to readme
- #1544 #1545 #1547 #1551: @josegonzalez @Flink Update compatibility for community plugins
- #1546: @josegonzalez Add missing description to history output in HISTORY.md
- #1552 #1553 #1555: @josegonzalez Various documentation styling tweaks

## 0.4.1

This release is primarily a bugfix and documentation update. In 0.4.0, we incorrectly handled setting environment variables in certain cases, resulting in misconfigured applications. We recommend that all users upgrade from 0.4.1 as soon as possible.

One new feature is colorized logging output, which should make it easier to debug application logging output when deploying multiple processes.

### Bug Fixes

- #1494: @callahad Correctly install packages for DOKKU_TAG=v0.4.0
- #1496: @callahad Don't prompt users when installing dokku package
- #1514: @michaelshobbs Do not use exit 0 in config functions and fix CURL environment variable setting

### New Features

- #1482: @Flink Strip the `dokku-` part from plugins on install
- #1500: @jazzzz Log user name and fingerprint in events
- #1512: @Flink Colorize output from logs

### Documentation

- #1485: @matto1990 Update Slack plugin compatability
- #1488: @josegonzalez Update plugins list with compatibility changes
- #1491: @josegonzalez Promote [maintenance](https://github.com/dokku/dokku-maintenance) and [http basic auth](https://github.com/dokku/dokku-http-auth) plugins to official status
- #1492: @josegonzalez Upgrade hostname plugin to 0.4.0+ compatibility
- #1501: @josegonzalez Clarify bootstrap installation documentation
- #1502: @josegonzalez Update dokku-apt compatibility
- #1504: @michaelshobbs Change plugin install doc to show one-step method

## 0.4.0

This is our first minor release in almost a year. Many new features and removals have occurred, so here is a neat summary:

- Plugins are now triggered via `plugn`. Notably, you'll need add a `plugin.toml` to describe the plugin as well as use `plugn trigger` instead of `pluginhook` to trigger plugin callbacks. Please see the [plugin creation documentation](https://dokku.com/docs/development/plugin-creation/) for more details.
- A few new official plugins have been added to the core, including [image tagging](https://dokku.com/docs/deployment/application-deployment/), [certificate management](https://dokku.com/docs/configuration/ssl/), a tar-based deploy solution, and much more. Check out the _New Features_ section for more details.
- We've removed a few deprecated plugin callbacks. Please see the [plugin triggers documentation](https://dokku.com/docs/development/plugin-triggers/) to see what is available.
- [Official datastorage plugins](https://github.com/dokku) have been created for the most commonly used datastores. If you previously used/maintained a community contributed plugin, please check these out. We'll be adding more official plugins as time goes on.

Thanks to the _many_ contributors for making this release our best release so far, and special thanks to both @michaelshobbs and @Flink for pushing along the `0.4.0` release!

### Deprecations and Removals

- #1372: @SonicHedgehog Do no longer force-install a default nginx.conf
- #1415: @tilgovi Remove uses of (un)set-norestart
- #1432: @josegonzalez Delete unmaintained AUTHORS file
- #1450: @michaelshobbs Rename event plugin buildstep hooks to buildpack

### Bug Fixes

- #1344: @AdamVig Add better error checking on nginx:import-ssl
- #1417: @josegonzalez Expose host and port in vagrant build vm
- #1418: @josegonzalez Use cgroupfs-mount as alternative package to cgroup-lite dependency
- #1419: @u2mejc Fix dokku ps <app> over ssh
- #1422: @josegonzalez Guard against missing VHOST files when listing domains
- #1428: @jimeh Use `$PLUGIN_PATH` instead of `$(dirname $0)/..`
- #1430: @lubert Update vagrant box name to `bento/ubuntu-14.04`
- #1439: @michaelshobbs Fix tar tests by sleeping for 5 seconds
- #1447: @alanjds Properly detect app name in the official cli client
- #1449: @josegonzalez Match herokuish deb with released version number
- #1457: @lukechilds Bashstyle fixes
- #1463: @josegonzalez Update `Xenify Distro` option for linode stackscript
- #1464: @josegonzalez Limit number of log lines when calling `dokku logs -t`
- #1466: @josegonzalez Follow bashstyle conventions where possible
- #1471: @michaelshobbs Make the default scaling logic clearer
- #1475: @josegonzalez Fix issue where restart on failure option overrode existing DOCKER_ARGS

### New features

- #1225: @michaelshobbs Add tags plugin to handle image tagging and deployment of tagged app images
- #1228: @michaelshobbs Use plugn instead of pluginhook to trigger plugin hooks
- #1402: @josegonzalez Consolidate configuration management into config plugin
- #1414: @michaelshobbs Add certs plugin for certificate management
- #1420: @josegonzalez Add `dokku enter` for connecting to an app container
- #1421: @basicer Add tar plugin to manage tar-based deployments
- #1423: @josegonzalez Set `DYNO_TYPE_NUMBER` environment variable for each container
- #1431: @josegonzalez Add helper function for inspecting the state of a container
- #1444: @josegonzalez Extract cleanup command into common function
- #1445: @josegonzalez Create CONTRIBUTING.md
- #1455: @michaelshobbs Continue and log an event if/when container retirement fails
- #1458: @michaelshobbs Set Herokuish `TRACE=true` when `DOKKU_TRACE` is set
- #1460: @michaelshobbs Bump herokuish version to 0.3.3
- #1465: @josegonzalez Set DYNO environment variable to heroku-compatible value
- #1467: @josegonzalez Upgrade dokku installation to use docker-engine
- #1468: @michaelshobbs Clean up semver logic and run install-dependencies after package installation
- #1469: @isundaylee Add nginx:access-logs and nginx:error-logs commands
- #1470: @assaf Add nginx configuration for running behind load balancer
- #1472: @michaelshobbs Use processes defined in `Procfile` when generating `DOKKU_SCALE` file
- #1473: @josegonzalez Handle crashing containers by using restart=on-failure policy
- #1476: @michaelshobbs Support static nginx port when deploying without an application VHOST
- #1476: nginx proxy without VHOST
- #1477: @arthurschreiber Support removing config variables containing newlines.

### Documentation

- #1407: @ertrzyiks Correct DOKKU_DOCKERFILE_PORT variable name in docs
- #1408: @josegonzalez Add links to official dokku datastorage plugins
- #1426: @henrik Update memcached link to maintained fork
- #1437: @Flink Update compatibility version for several plugins
- #1446: @johnfraney Correct nginx documentation
- #1478: @eljojo Fix naming of herokuish package in installation docs

## 0.3.26

This release has a few new features, the largest of which is switching from buildstep to herokuish for building containers. Going forward, this should help ensure that built containers are as close to heroku containers as possible, and also allow us to be on the cutting edge of heroku buildpack support. Props to @michaelshobbs for his work on herokuish.

### Bug Fixes

- #1401: @josegonzalez Install apt-transport-https before adding https-backed apt sources

### New Features

- #1128: @michaelshobbs Switch from buildstep to herokuish
- #1399: @basicer Make dokku play nice when there are multiple receive-app hooks
- #1413: @michaelshobbs support comments in DOKKU_SCALE and print contents on deploy

### Documentation

- #1400: @josegonzalez Fix HISTORY.md formatting
- #1410: @josegonzalez Clarify DOKKU_SCALE usage
- #1411: @josegonzalez Clarify `ps:scale` example

## 0.3.25

This release is a bugfix release fixing a broken 0.3.25 apt-get installation.

### Bug Fixes

- #1398 @josegonzalez Revert "Remove `dokku plugins-install` from postinst hook

## 0.3.24

This release is a bugfix release covering dokku packaging.

### Bug Fixes

- #1397: @josegonzalez Use https docker apt repo
- #1394: @josegonzalez Remove `dokku plugins-install` from postinst hook

### Documentation

- #1395: @adrianmoya Adding fqdn requirement

## 0.3.23

This release is a bugfix release mostly covering installation and nginx issues. As well, we launched a nicer documentation site [here](https://dokku.com/docs/). Thanks to all of our contributors for making this a great release!

### Bug Fixes

- #1334: @josegonzalez Fix pluginhook building and update package version
- #1335: @josegonzalez Fix name for michaelshobbs
- #1341: @michaelshobbs Honor $DOKKU_DOCKERFILE_PORT when binding the docker container to an external IP.
- #1357: @michaelshobbs only run domains and nginx config if we have a port and ip
- #1366: @omeid Make bootstrap.sh safe from bad connection
- #1370: @SamuelMarks Switch from /dev/null to -qq, from --silent to -sL, and sudo
- #1380: @emdantrim Removed uses of `sudo` from `bootstrap.sh`
- #1383: @michaelshobbs fix downscaling from 10+

### New Features

- #1292: @michaelshobbs use column to format help output
- #1337: @josegonzalez Update PREBUILT_STACK_URL to latest buildstep release
- #1354: @alessio Log receive-branch pluginhook
- #1359: @michaelshobbs allow DOKKU_WAIT_TO_RETIRE to be defined per app
- #1365: @michaelshobbs support dockerfile images that don't include bash

### Documentation

- #1305: @josegonzalez Updated documentation site
- #1321: @fwolfst Mention alternative to nginx.conf templates: include-dir.
- #1346: @michaelshobbs document dokku cleanup and the potential of compat issues
- #1349: @alexkruegger add plugin dokku-app-configfiles
- #1358: @bkniffler Add suggestion for low memory VMs
- #1377: @vkurup Fix link to docs from README
- #1379: @jezdez Deleted old, unmaintained plugins
- #1381: @lunohodov Instructions for using the bash client in shells other than bash

## 0.3.22

This release is a general bugfix release, with improvements to handling of nginx templates and application configuration.

### Bug Fixes

- #825: @andrewsomething Add support for multiple keys in the installer.
- #1274: @michaelshobbs Parse correct section of path for `dokku ls` container type
- #1289: @michaelshobbs Do not background container cleanup
- #1298: @SonicHedgehog Fix check-deploy skipping the root path
- #1300: @michaelshobbs Fix urls command when NO_VHOST=1
- #1310: @michaelshobbs Use config:get for checks skipping variables
- #1311: @michaelshobbs Ignore protocol of Dockerfile EXPOSE (refs: #1280)
- #1312: @michaelshobbs Use docker inspect fordefault container check. Closes #1270
- #1313: @michaelshobbs Verify we have an app when deploy is called. Closes #1309
- #1319: @MWers Spelling fix: 'comma seperated'=>'comma-separated'
- #1331: @alexkruegger Fix retrieval of nginx.conf.template app

### New Features

- #1149: @mlebkowski Add pluginhook to receive branches different than master
- #1254: @kilianc Add DOKKU_DOCKERFILE_START_CMD support
- #1261: @Flink Add the ability to skip checks (all or default)
- #1277: @krokhale Add gzip to nginx templates by default
- #1278: @assaf Add the ability to retrieve nginx template from app
- #1291: @michaelshobbs Refactored interface for managing global/local app configuration
- #1299: @SonicHedgehog Set X-Forwarded-Proto header if TLS is enabled when running checks

### Documentation

- #1273: @alessio Add docs for the events plugin
- #1276: @josegonzalez Reorder and deprecate a few plugins
- #1279: @josegonzalez Add docs for `receive-branch` hook. Refs #1149
- #1282: @josegonzalez Move primecache to deprecated plugins
- #1285: @josegonzalez Rename dokku-events-logs.md according to index.md
- #1296: @Flink Add docker-auto-volumes to plugins
- #1301: @mixxorz Add reset mtime plugin list
- #1302: @fwolfst Mention where original nginx templates are found by default.
- #1306: @josegonzalez Clarify web/cli installation docs. Closes #1177. Closes #1170
- #1307: @josegonzalez Add release documentation. Closes #1287
- #1324: @michaelshobbs Update docs to reflect default checks

## 0.3.21

This release fixes an issue with installing buildstep and dokku.

### New Features

- #1256: @alessio Log all dokku events to /var/log/dokku/events.log

### Bug Fixes

- #1269: @josegonzalez Peg lxc-docker in buildstep to 1.6.2

## 0.3.20

This release pegs Dokku to Docker 1.6.2. Docker 1.7.0 introduced changes in `docker ps` which cause incompatibilities with many popular dokku plugins.

### New Features

- #1245: @arthurschreiber Support config variables containing newlines
- #1257: @josegonzalez Split nginx ssl logs by $APP

### Bug Fixes

- #1207: @rockymadden Fixed bug with client commands taking verb, appname, and also arguments.
- #1251: @josegonzalez Fallback to using /etc/init.d/nginx reload directly to restart nginx
- #1264: @josegonzalez Require lxc-docker-1.6.2

### Documentation

- #1252: @josegonzalez Fix ssh port for vagrant installation. Closes #1139. [ci skip]
- #1250: @josegonzalez SSL documentation is misleading

## 0.3.19

### New Features

- #1118: @michaelshobbs Heroku-style Container-Level scaling
- #1210: @cddr Split nginx logs out by $APP
- #1232: @michaelshobbs Allow passing of docker build options and document dockerfile deployment. Closes #1231

### Bug Fixes

- #1179: @follmann Prevent dismissal of URLs in CHECKS file that contain query params
- #1193: @michaelshobbs Handle docker opts over ssh without escaping quotes. closes #1187
- #1198: @3onyc Check web_config before key_file (Fixes #1196)
- #1200: @josegonzalez Fix lintball from #1198
- #1202: @michaelshobbs Filter out literal wildcard when deploying an unrelated domain. Closes #1185
- #1204: @3onyc Fix bootstrap.sh, install curl when it's missing, make curl follow redirects, don't suppress stderr
- #1206: @rockymadden Handle for installs in /usr/local/bin and the like.
- #1212: @michaelshobbs Let circleci dictate docker install (fixes master)
- #1217: @kirushanth-sakthivetpillai Fix broken ssl wildcard redirect
- #1227: @Flink Use --no-cache when building Dockerfile
- #1246: @josegonzalez Ensure we call apt-get before installing packages

### Documentation

- #1168: @cjblomqvist [docs] Update git-rev plugin to point to maintained version
- #1180: @sherbondy [docs] Clarify usage around official dokku `docker-options` plugin
- #1192: @alessio [docs] Add reference to dokku-events plugin
- #1218: @michaelshobbs [docs] add dokku-logspout plugin
- #1224: @lmars [docs] Add link from plugin-creation to pluginhooks
- #1237: @zyegfryed [docs] Typo (at at -> at)

## 0.3.18

- #1111: @michaelshobbs Call pre-build-dockerfile before docker build
- #1119: @joshco Logging info suggesting tuned CHECKS
- #1120: @josegonzalez [docs] Add freenode shield to readme
- #1121: @josegonzalez Prompt users to run the web installer via MOTD. Closes #943
- #1129: @josegonzalez Validate nginx configuration before restarting nginx
- #1137: @YellowApple [docs] Safer installation method
- #1138: @chrisbutcher [docs] Include tip about using sshcommand acl-add
- #1140: @NigelThorne [docs] Replaced reference to gitreceive with sshcommand as per #746
- #1144: @protonet Allow git-remote with different port
- #1145: @michaelshobbs allow docker-options over ssh. plus test. closes #1135
- #1146: @michaelshobbs Don't re-deploy on domains:add. allow multple domains on command line. Closes #1142
- #1147: @michaelshobbs Utilize all 4 free CircleCI containers
- #1148: @TheEmpty [docs] Add information about 444 for nginx in default_sever.
- #1150: @cjblomqvist [docs] Add monit plugin
- #1151: @LTe Do not kill docker container with SIGKILL
- #1153: @econya [docs] Add README-section: how to contribute
- #1058: @josegonzalez Move bootstrap script to use debian package where possible
- #1171: @josegonzalez Use debconf for package configuration
- #1172: @michaelshobbs unify default and custom nginx template processing
- #1173: @josegonzalez [docs] standardize readme badges
- #1178: @jagandecapri [docs] Update plugins.md
- #1189: @vincentfretin wait 30 seconds and not 30 minutes
- #1190: @josegonzalez Fix docker gpg key installation

## 0.3.17

- #1056: @joshco New check retries feature
- #1060: @josegonzalez Add .template suffix to nginx configuration templates. Refs #1054
- #1064: @michaelshobbs [docs] Document test suite
- #1065: @michaelshobbs Minor dev env cleanup
- #1067: @martinAntsy Fix nginx docs wording around config template eg
- #1068: @matiaskorhonen Fix escaping in the rc.local script in the Linode StackScript
- #1074: @Flink Better detection of dokku remote in dokku_client.sh
- #1075: @Flink Use TTY option for SSH
- #1077: @Flink [docs] Add dokku-psql-single-container to plugins
- #1079: @rorykoehler Corrected configuration link in bootstrap.sh
- #1080: @michaelshobbs Include official docker-options plugin. closes #1062
- #1081: @michaelshobbs Force testing .env with no newline. Closes #1025, #1026, #1063
- #1082: @michaelshobbs Test cleanup with slight performance boost
- #1084: @awendt Make port forwarding configurable
- #1087: @michaelshobbs Make docker-options adhere to DOKKU_NOT_IMPLEMENTED_EXIT pattern
- #1088: @michaelshobbs Support dockerfiles without expose command. closes #1083
- #1097: @michaelshobbs Use config:set-norestart in domains plugin. config:get for dockerfile port. closes #1041
- #1102: @kblcuk Source app-specific ENV during check-deploy
- #1107: @Benjamin-Dobell [docs] Added Dokku Graduate to the list of known plugins

## 0.3.16

- #974: @michaelshobbs Don't use set to guard against pipefail
- #975: @michaelshobbs Simplify SSL hostname handling and avoid overwriting variables. refs #971
- #978: @michaelshobbs Add apparmor and cgroup-lite as pre-dependencies for dokku debian package
- #980: @josegonzalez [docs] Add documentation for pluginhooks
- #981: @josegonzalez Remove old files
- #982: @josegonzalez [docs] Add documentation for existing clients. Closes #977
- #983: @josegonzalez [docs] Update installation documentation
- #984: @josegonzalez [docs] Clarify installation instructions
- #988: @josegonzalez [docs] Add deprecated plugins section and where to get help
- #989: @josegonzalez [docs] Add more clients
- #986: @josegonzalez Switch to yabawock's static nginx buildpack for tests
- #987: @techniq Improve Dockerfile example/test
- #967: @alessio Really clean-up containers and images a-la-Docker
- #992: @josegonzalez [docs] Fix digital ocean docs. Closes #991
- #994: @alessio Fix quoting in container termination. Closes #249
- #996: @pmvieira [docs] Minor typo fix in the pluginhooks documentation
- #1003: @michaelshobbs Remove quoting around cleanup and disable lint for those lines
- #1001: @sekjun9878 [docs] Add sekjun9878/dokku-redis-plugin to plugins.md
- #1004: @michaelshobbs Remove quoting from dockerfile env. closes #1002
- #1018: @michaelshobbs Confine arg shifting to between dokku and command. closes #1017
- #1022: @Flink [docs] Add dokku-maintenance to plugins
- #1008: @lmars Support multiple domains using a wildcard TLS certificate
- #1013: @lmars Fix URL schemes in `dokku urls` output
- #1027: @nickstenning [docs] Add webhooks plugin to documentation
- #1026: @michaelshobbs Ensure we have newlines around our config. closes #1025
- #1010: @michaelshobbs Don't run create/destroy twice in tests
- #1028: @Flink [docs] Add rails-logs to plugins
- #1031: @michaelshobbs Upgrade docker in CI to 1.5.0
- #1029: @assaf Added several enhancements for CHECKS file:
    - Specify how long to wait before running first check
    - Specify timeout for each check
    - Check specific hosts, e.g. [http://signin.example.com](http://signin.example.com)
    - Check both HTTP and HTTPS resources
- #1032: @cameron-martin Updated dokku-installer to use relative path
- #1035: @Flink [docs] Add dokku-http-auth to plugins
- #1040: @ebeigarts [docs] Add dokku-slack plugin information
- #1038: @michaelshobbs Default container check. closes #1020
- #1036: @michaelshobbs Create config set/unset without restart. closes #908
- #1009: @michaelshobbs Extract first port from Dockerfile and set config variable for use in deploy phase. closes #993
- #1042: @michaelshobbs Update to Support xip.io wildcard DNS as a VHOST
- #1043: @michaelshobbs Use upstart config from docker docs. closes #1015
- #1047: @michaelshobbs Show logs on deploy success and failure
- #1049: @ebeigarts [docs] Change Slack Notifications link
- #1051: @Flink [docs] Add dokku-airbrake-deploy to plugins
- #1057: @josegonzalez Updated deb packaging

## 0.3.15

- #950: @michaelshobbs Do not count blank lines in `make count`
- #952: @michaelshobbs Document cli args over ssh. closes #951
- #954: @michaelshobbs Dockerfile support
- #955: @michaelshobbs Quick style refactor
- #956: @michaelshobbs Comment out skipped tests as we pay the cost for setup() and teardown() anyway
- #957: @michaelshobbs Implement dokku shell and ls (by @plietar). refs #312
- #960: @michaelshobbs Use consistent bash shebang. closes #959
- #962: @josegonzalez Update debian package building due to man page generation changes
- #964: @michaelshobbs Only look for long args in global space. allows for short args in plugins. closes #963
- #966: @djelic handle upgrade in debian/preinst script

## 0.3.14

- #891: @josegonzalez Keep existing configuration files when installing nginx. Refs #886
- #892: @josegonzalez Change documentation on where the ssh config PORT is setup
- #894: @josegonzalez Dokku client improvements
- #895: @michaelshobbs Document deploying private git submodules. Closes #644
- #896: @michaelshobbs Add docker-args pluginhook call to build phase. Closes #515
- #897: @michaelshobbs Official PS plugin
- #898: @joliv Update man page for 0.3.13
- #899: @joliv Use help2man to automatically generate man pages
- #900: @michaelshobbs Support extracting SANs from SSL certificates and adding them to nginx config
- #901: @misto Pull new tags when upgrading to update VERSION
- #904: @michaelshobbs Prevent error on restartall when no apps deployed
- #905: @vincentfretin robv/dokku-elasticsearch not compatible with latest version
- #907: @vincentfretin Don't use -o pipefail for plugin
- #914: @michaelshobbs Conditionally set interactive and tty on dokku run. Closes #552. Closes #913
- #915: @michaelshobbs Document default sites in nginx. Closes #650
- #916: @michaelshobbs Document build phase troubleshooting suggestions. Closes #841. Closes #911.
- #917: @michaelshobbs Document resolvconf troubleshooting step. Closes #649
- #922: @michaelshobbs Use tty cmd to detect if we have one. Closes #921
- #925: @michaelshobbs Implement rebuild command that reuses git_archive_all
- #926: @dyson Update Troubleshooting link in README.md.
- #927: @michaelshobbs Support both docker-args PHASE and docker-args-PHASE. Closes #906
- #933: @michaelshobbs Remove references to .pem. Closes #930
- #936: @michaelshobbs Only execute build stack if we have access to /var/run/docker.sock. Closes #929
- #938: @vincentfretin Enable ssl_prefer_server_ciphers
- #940: @michaelshobbs Use valid composer json with specified php runtime
- #941: @michaelshobbs Source global env prior to app env. Closes #931
- #942: @michaelshobbs Test clojure app
- #949: @michaelshobbs Common functions library with simple argument parsing. Closes #932. Closes #945

## 0.3.13

- #815: @abossard Added wordpress installation helper to plugin index
- #858: @josegonzalez Disable server tokens in nginx. Closes #857
- #859: @josegonzalez Pass command being executed when retrieving DOCKER_ARGS via pluginhook.
- #861: @josegonzalez Default DOKKU_ROOT to ~dokku if unspecified. Closes #587
- #863: @josegonzalez Add missing properties to the php composer.json
- #864: @michaelshobbs bind docker container to internal port if using vhosts
- #867: @michaelshobbs silent grep stderr. closes #862
- #868: @michaelshobbs use circleci for automated testing
- #872: @michaelshobbs fix/enable multi buildpack test
- #873: @michaelshobbs support pre deployment usage of domains plugin. fixes interface binding issue
- #874: @josegonzalez Add advanced installation docs that were removed in #706. Closes #869
- #876: @vincentfretin give CACHE_PATH env variable for forward compatibility with herokuish
- #877: @michaelshobbs add MH to AUTHORS
- #880: @michaelshobbs disable VHOST deployment if global VHOST file is missing and an app domain has not been added
- #881: @jomo troubleshooting typo: 64 != 46
- #884: @michaelshobbs IP and PORT are likely to get clobbered. rename them
- #885: @michaelshobbs test deploy node app without procfile

## 0.3.12

- #846: @michaelshobbs add certificate CN to app VHOST if it's not already
- #847: @leonardodino Update bootstrap.sh: new docs url
- #849: @cjoudrey Add docs for CHECKS
- #850: @michaelshobbs test scala deployment

## 0.3.11

- #821: @michaelshobbs use wercker for automated testing
- #833: @michaelshobbs auto remove the cache dir cleanup container
- #835: @michaelshobbs make sure we match the specific string in VHOST
- #838: @michaelshobbs quote build_env vars to allow for spaces in config
- #839: @michaelshobbs notify irc on builds
- #844: @michaelshobbs build app urls based on wildcard ssl or app ssl

## 0.3.10

- #783: @josegonzalez New domains plugin and nginx extension
- #818: @michaelshobbs rebuild nginx config on domain change
- #827: @michaelshobbs Handle IP only access
- #828: @michaelshobbs Display the port for an app when falling back to the ip address

## 0.3.9

- #787: @josegonzalez/@michaelshobbs Official user-env-compile plugin
    - Uses ENV and APP/ENV files
    - Supports old `BUILD_ENV` files (which are likely in wide-use)
    - Allows user's to override globals with app-specific configuration
    - Migrate `$DOKKU_ROOT/BUILD_ENV` to `$DOKKU_ROOT/ENV` if the former exists and the latter does not
    - Drop `BUILD_ENV` support in favor of just `ENV` via a `mv` command
    - Add default ENV with `CURL_TIMEOUT` and `CURL_CONNECT_TIMEOUT`
- #811: @abossard Increased `server_names_hash_bucket_size` in nginx.conf to 512
- #814: @josegonzalez Source files in $DOKKU_ROOT/.dokkurc directory and add `dokku trace` command
- #816: @josegonzalez Add documentation for user-env feature

## 0.3.8

- #796: @josegonzalez Better vagrant documentation
- #801: @joelvh Point users to upgrade guides
- #805: @ademuk Fixed import-ssl server.crt/key check
- #806: @josegonzalez Dokku pushes now happen as the dokku user, not git. Refs #796
- #807: @josegonzalez Write proper nginx conf upon installation. Closes #799
- #808: @josegonzalez Ensure makefiles are properly formatted

## 0.3.7

- #788: @mmerickel fix apps plugin issues in 0.3.6
- #789: @mmerickel do not output message when creating ENV file

## 0.3.6

- #782: @josegonzalez Simplified config checking
- #785: @lsde fix missing semicolon in nginx config

## 0.3.5

- #784: @josegonzalez Fix NO_VHOST check

## 0.3.4

- #780: @josegonzalez Output error message when a command is not found. Closes #778
- #781: @michaelshobbs use DOKKU_IMAGE (i.e. progrium/buildstep)

## 0.3.3

- #659: @Xe contrib: add dokku client shell script
- #669 @ohardy Handle dokku plugins-update command
- #722: @wrboyce Add `git pull` support with git-pre-pull and git-post-pull hooks
- #751: @tboerger Partial openSUSE support
- #776: @joliv Update man page for new commands
- #777: @tboerger Use PLUGINS_PATH env var and persist environment when running dokku with sudo
- #779: @josegonzalez Minor bash formatting changes

## 0.3.2

- #675: @michaelshobbs port wait-to-retire from broadly/dokku
- #765: @josegonzalez Ignore tls directory when listing apps
- #766: @josegonzalez Sort output of apps command
- #771: @josegonzalez Doc updates
- #518 #772: @nickl- Import ssl certificates
- #773: @alex-sherwin Support a way to not create nginx vhost
- #774: @josegonzalez Add the ability to customize an app's hostname using nginx-hostname pluginhook

## 0.3.1

- 647b2157: @josegonzalez Update HISTORY.md for 0.3.0
- #359: @plietar Remove plugins before copying them again
- #573: @eriknomitch Use command instead of which for apt-get existential check in bootstrap.sh
- #579: @motin Plugin nginx-vhosts includes files in folder nginx.conf.d
- #607: @fbochu Use PLUGIN_PATH in dokku default case
- #617: @markstos Document what bootstrap.sh is doing
- #758: @josegonzalez Make ENV file readable only from dokku user. Closes #621
- #699: @tombell Actually suppress the output from `git_archive_all`
- #702: @jazzzz Allows config:set to set parameters values with spaces
- #754: @josegonzalez Remove all references to Ubuntu 12.04. Refs #238
- #755: @josegonzalez Setup dokku-installer within Vagrant VM on first provision
- #759: @josegonzalez Create an `apps` core plugin
- #760: @josegonzalez Formatting
- #761: @josegonzalez Add dokku-registry to list. Closes #716
- #762: @josegonzalez Update template for dokku docs

## 0.3.0

- Added git submodules support
- 969aed87: @jfrazelle  Fix double brackets issue in nginx-vhosts install
- 42fee25f: @rhy-jot Mention 14.04 & 12.10 sunset
- 4f5fc586: @rhy-jot Update cipher list
- #276: @wingrunr21 Add dependencies hook
- #476: @joliv Added man page entry
- #522: @wingrunr21 Improve SSL support and implement SPDY
- #544: @jfrazelle if dokku.conf has not been created, create it
- #555: @jakubholynet Readme fix, Env vars only set at run time
- #562: @assaf Zero down-time deploy and server checks
- #571: @joliv Added man page plugin command
  #601: @jazzzz Restart app only if config changed
- #628: @voronianski Update Vagrant box to trusty because of raring server issues
- #632: @jazzzz Fixed port when docker is start with --ip with an IP other than 0.0.0.0
- #654: @cameron-martin Fixed variable name for RESTART
- #664: @alexernst Don't overwrite $APP/URL modified by plugins in post-deploy hook
- #665: @protomouse Explicitly install man-db
- #698: @tombell Help output formatting
- #701: @jazzzz  Fix issues with single-letter config:set usage
- #703: @jazzzz  Display help when invoking dokku with no parameter
- #706: @josegonzalez Consolidate documentation on viewthedocs
- #709: @rinti Grammar and spelling fixes
- #708: @josegonzalez Simplify vagrant workflow
- #717: @kristofsajdak Add dokku-registry to plugin list
- #718: @Coaxial Use https for installation instructions
- #721: @wrboyce  Fix issue in plugins-install-dependencies
- #723: @ghostbar Let users know they are starting buildstep during installation
- #735: @andrewsomething Redirect to the app deployment docs on success.
- #745: @rcarmo Typo
- #746: @vincentfretin replace gitreceive by sshcommand in example url
- #748: @vincentfretin Link to proper blog url
- #749: @vincentfretin Fix app certificate directory in backup-import/export
- #750: @th4t Remove unintended phrase repetition in installation.md

## 0.2.0 (2013-11-24)

- Added DOKKU_TRACE variable for verbose trace information
- Added an installer (for pre-built images)
- Application config (environment variable management)
- Backup/import plugin
- Basic hooks/plugin system
- Cache dir is preserved across builds
- Command to delete an application
- Exposed commands over SSH using sshcommand
- Git handling is moved to a plugin
- Integration test coverage
- Pulled nginx vhosts out into plugin
- Run command
- Separated dokku and buildstep more cleanly
- Uses latest version of Docker again

## 0.1.0 (2013-06-15)

- First release
    - Bootstrap script for Ubuntu system
    - Basic push / deploy with git
    - Hostname support with Nginx
    - Support for Java, Ruby, Node.js buildpacks
