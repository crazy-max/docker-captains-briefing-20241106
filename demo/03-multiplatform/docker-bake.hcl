group "default" {
  targets = ["build"]
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
  inherits = ["push"]
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
}

target "cross" {
  inherits = ["multi"]
  dockerfile = "Dockerfile.cross"
}
