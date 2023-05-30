variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "monitoring" {
  default = true
}

variable "tags" {
  type = map(any)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

data "aws_vpc" "selected" {
  default = true
}

data "aws_security_groups" "default" {

  filter {
    name   = "group-name"
    values = ["default"]
  }
}
