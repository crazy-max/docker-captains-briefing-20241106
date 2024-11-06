# syntax=docker/dockerfile:1

ARG GO_VERSION=1.22

FROM golang:${GO_VERSION}-alpine AS build
WORKDIR /src
RUN --mount=type=bind,target=. \
  go build -ldflags "-s -w" -o /usr/bin/app .

FROM alpine
COPY --from=build /usr/bin/app /usr/bin/app
CMD ["app"]
