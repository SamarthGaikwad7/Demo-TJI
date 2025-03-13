variable "aws_region" {
    type=string
    description = "aws region name"
    default = "us-east-1"
  
}
variable "instance_type" {
    type=string
    description = "Ec2 instancetype"
    default = "t2.micro"

}
variable "ami_id" {
    type=string
    description = "ami id"
    default = "ami-085ad6ae776d8f09c"
  
}