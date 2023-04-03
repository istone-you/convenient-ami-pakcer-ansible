build {
  sources = [
    "source.amazon-ebs.packer-ansible"
  ]
  provisioner "ansible" {
    playbook_file   = "./scripts/main.yml"
    user            = "ec2-user"
    extra_arguments = ["-vvvv"]
  }
}