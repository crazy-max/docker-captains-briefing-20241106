group "default" {
  targets = ["build"]
}

target _platforms {
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
}

target "build" {
  tags = ["crazymax/docker-captains-briefing-20241106:03-multiplatform"]
  output = ["type=image"]
}

target "push" {
  inherits = ["build"]
  output = ["type=registry"]
}

target "multi" {
  inherits = ["push", "_platforms"]
}

target "test" {
  target = "test"
  output = ["type=cacheonly"]
}

target "test-coverage" {
  target = "test-coverage"
  output = ["./bin"]
}

target "binaries" {
  target = "binaries"
  output = ["./bin/build"]
}

target "binaries-multi" {
  inherits = ["binaries", "_platforms"]
}
