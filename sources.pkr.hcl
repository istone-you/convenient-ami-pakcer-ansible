source "amazon-ebs" "webserver" {
    source_ami_filter {
        filters = {
            name = "amzn2-ami-hvm-*-x86_64-gp2"
        }
        owners = ["137112412989"]
        most_recent = true
    }
    region        = var.region
    instance_type = var.instance_type
    ssh_username  = "ec2-user"
    ssh_timeout   = "5m"
    ami_name      = "packer-ansible"
    }