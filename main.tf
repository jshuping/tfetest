resource "null_resource" "slack_channels" {
  provisioner "local-exec" {
    command = "echo hello world ${var.foo}"
  }
}
