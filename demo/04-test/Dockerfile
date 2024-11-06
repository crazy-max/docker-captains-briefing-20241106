# syntax=docker/dockerfile:1

ARG GO_VERSION=1.22

FROM --platform=$BUILDPLATFORM golang:${GO_VERSION}-alpine AS base
WORKDIR /src

FROM base AS build
ARG TARGETOS
ARG TARGETARCH
RUN --mount=type=bind,target=. \
GOOS=$TARGETOS GOARCH=$TARGETARCH go build -ldflags "-s -w" -o /usr/bin/app .

FROM base AS test
RUN --mount=target=. \
    go test -v ./...

FROM base AS test-with-coverage
RUN --mount=target=. \
    go test -v -coverprofile=/tmp/coverage.txt ./...

FROM scratch AS test-coverage
COPY --from=test-with-coverage /tmp/coverage.txt /coverage.txt

FROM alpine
COPY --from=build /usr/bin/app /usr/bin/app
CMD ["app"]
