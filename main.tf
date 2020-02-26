variable "foo" {
}

module "test" {
  source  = "app.terraform.io/ebtest/test/null"
  version = "1.0.0"
  test_string = "yeehaw"
}

output "modtest" {
    value = "${module.test.test_output}"
}

resource "null_resource" "slack_channels" {
  provisioner "local-exec" {
    command = "echo hello world ${var.foo}"
  }
}
