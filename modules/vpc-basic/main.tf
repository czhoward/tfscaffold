# Terraform configuration - Create a VPC spanning 3 regions and deploy a public and private subnet in each region

data "aws_availability_zones" "available" {}

resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = var.default_tags
}

resource "aws_subnet" "public_subnet" {
  count                   = length(data.aws_availability_zones.available.names)
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = cidrsubnet(aws_vpc.vpc.cidr_block, 4, count.index) # 2,048 IP addresses each
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = merge(
    var.default_tags,
    {
#      Subnet = "${each.key}-${each.value}"
    },
  )

}

resource "aws_subnet" "private_subnet" {
  count                   = length(data.aws_availability_zones.available.names)
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = cidrsubnet(aws_vpc.vpc.cidr_block, 4, count.index) # 2,048 IP addresses each
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = false
  tags = merge(
    var.default_tags,
    {
#      Subnet = "${each.key}-${each.value}"
    },
  )
}

