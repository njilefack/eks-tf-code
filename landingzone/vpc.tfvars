cidr                    = "10.0.0.0/16"
secondary_cidr_blocks   = ["10.1.0.0/16", "10.2.0.0/16"]
private_subnets         = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets          = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
database_subnets        = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
elasticache_subnets     = ["10.0.31.0/24", "10.0.32.0/24", "10.0.33.0/24"]
redshift_subnets        = ["10.0.41.0/24", "10.0.42.0/24", "10.0.43.0/24"]
intra_subnets           = ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]

private_subnet_names = ["Private Subnet One", "Private Subnet Two", "Private Subnet Three"]
# public_subnet_names omitted to show default name generation for all three subnets
database_subnet_names    = ["DB Subnet One", "DB Subnet Two", "DB Subnet Three"]
elasticache_subnet_names = ["Elasticache Subnet One", "Elasticache Subnet Two", "Elasticache Subnet Three"]
redshift_subnet_names    = ["Redshift Subnet One", "Redshift Subnet Two", "Redshift Subnet Three"]
intra_subnet_names       = ["Infra Subnet One", "Infra Subnet Two", "Infra Subnet Three"]

create_database_subnet_group = true

enable_dns_hostnames = true
enable_dns_support   = true

enable_nat_gateway = true
single_nat_gateway = true

enable_vpn_gateway = true

enable_dhcp_options              = true
dhcp_options_domain_name         = "service.consul"
dhcp_options_domain_name_servers = ["127.0.0.1", "10.10.0.2"]

# VPC Flow Logs (Cloudwatch log group and IAM role will be created)
enable_flow_log = true
create_flow_log_cloudwatch_log_group = true
create_flow_log_cloudwatch_iam_role  = true
flow_log_max_aggregation_interval    = 60

