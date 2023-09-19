variable "TAG" {
  default = "latest"
}

variable "GO_VER" {
  default = "1.21"
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
    GO_VER="${GO_VER}"
  }
}