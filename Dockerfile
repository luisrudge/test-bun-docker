FROM imbios/bun-node:20-slim
WORKDIR /usr/src/app

# Copy the package files and install dependencies
COPY . .
RUN bun install --frozen-lockfile

#docker build --pull -t test-bun-docker --progress=plain --no-cache .
#0 building with "desktop-linux" instance using docker driver

#1 [internal] load .dockerignore
#1 DONE 0.0s

#1 [internal] load .dockerignore
#1 transferring context: 2B done
#1 DONE 0.0s

#2 [internal] load build definition from Dockerfile
#2 transferring dockerfile: 182B done
#2 DONE 0.0s

#3 [internal] load metadata for docker.io/imbios/bun-node:20-slim
#3 DONE 0.4s

#4 [1/4] FROM docker.io/imbios/bun-node:20-slim@sha256:129294247a86ee52f7e5256347670571a2169f4cacaf91e60ed02666ff6c48ea
#4 DONE 0.0s

#5 [2/4] WORKDIR /usr/src/app
#5 CACHED

#6 [internal] load build context
#6 transferring context: 296.63MB 3.1s done
#6 DONE 3.2s

#7 [3/4] COPY . .
#7 DONE 1.7s

#8 [4/4] RUN bun install --frozen-lockfile
#8 0.092 bun install v1.0.8 (2a405f69)
#8 0.113 error: Unexpected installing @esbuild/linux-arm64
#8 0.113 error: Unexpected installing @cloudflare/workerd-linux-arm64
#8 0.113 error: Unexpected installing @esbuild/linux-arm64
#8 0.113 error: Unexpected installing @esbuild/linux-arm64
#8 0.113 Failed to install 4 packages
#8 0.113 [24.00ms] done
#8 DONE 0.1s

#9 exporting to image
#9 exporting layers
#9 exporting layers 1.2s done
#9 writing image sha256:a18346bc6d3874b09ecbbfe8052cc6f4c852fe80be517b1e827a542846971bcc done
#9 naming to docker.io/library/test-bun done
#9 DONE 1.2s