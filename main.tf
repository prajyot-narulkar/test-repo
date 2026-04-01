terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "hello" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo Hello"
  }
}
