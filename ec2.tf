module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  instance_type          = var.instance_type
  monitoring             = var.monitoring
  vpc_security_group_ids = data.aws_security_groups.default.ids

  tags = var.tags
} 