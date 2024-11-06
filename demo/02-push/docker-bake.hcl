group "default" {
  targets = ["build"]
}

target "build" {
  tags = ["crazymax/docker-captains-briefing-20241106:02-push"]
  output = ["type=image"]
}

target "push" {
  inherits = ["build"]
  output = ["type=registry"]
}
