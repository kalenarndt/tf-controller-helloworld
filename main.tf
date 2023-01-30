terraform {
  required_version = ">= 0.12.26"
}

terraform {
  cloud {
    organization = "integration-testing"

    workspaces {
      name = "flux-tf-controller"
    }
  }
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

output "hello_world" {
  value = "Hello, ${var.subject}!"
}
