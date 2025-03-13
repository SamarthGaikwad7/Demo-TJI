provider "aws" {
    region = var.aws_region
}
resource "aws_instance" "example" {
    ami=var.ami_id
    instance_type = var.instance_type
    subnet_id = "subnet-084c5bc0d98112251"
    vpc_security_group_ids = ["sg-0db05b8b042cdce03"]
    tags={
        Name="EC2-Instance-XYZ"
    }
}
