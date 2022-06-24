# Output variable definitions


output "vpc_id" {
  value = module.basic_vpc.vpc_id
}

output "vpc_cidr" {
  value = module.basic_vpc.vpc_cidr
}

output "vpc_public_subnets" {
  # Result is a map of subnet id to cidr block, e.g.
  # { "subnet_1234" => "10.0.1.0/4", ...}
  value = {
    for subnet in module.basic_vpc.vpc_public_subnets :
    subnet.id => subnet.cidr_block
  }
}

output "vpc_private_subnets" {
  # Result is a map of subnet id to cidr block, e.g.
  # { "subnet_1234" => "10.0.1.0/4", ...}
  value = {
    for subnet in module.basic_vpc.vpc_private_subnets :
    subnet.id => subnet.cidr_block
  }
}
