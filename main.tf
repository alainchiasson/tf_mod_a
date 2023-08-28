variable "my_var" {
    type = string
    default = "Hello World"
}

resource "null_resource" "tf_mod_a" {
  provisioner "local-exec" {
    command = "echo ${var.my_var}"
  }
}

