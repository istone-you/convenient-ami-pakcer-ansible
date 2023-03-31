source "amazon-ebs" "webserver" {
  region        = var.region
  source_ami    = "ami-06fdbb60c8e83aa5e"
  instance_type = var.instance_type
  ssh_username  = "ec2-user"
  ssh_timeout   = "5m"
  ami_name      = "packer-ansible"
}