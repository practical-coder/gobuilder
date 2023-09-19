variable "TAG" {
  default = "latest"
}

variable "VERSION" {
  default = "v5"
}

group "default" {
  targets = ["gobuilder"]
}

target "gobuilder" {
  dockerfile = "Dockerfile"
  tags = [
    "docker.io/cyfrowy/gobuilder:${TAG}",
    "docker.io/cyfrowy/gobuilder:${VERSION}",
  ]
  args = {
    GO_VER="1.21"
  }
}