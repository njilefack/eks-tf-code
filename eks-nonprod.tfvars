vpc_id          = "vpc-0488c0293a370ed42"
private_subnet_ids = ["subnet-03f8b8e7c6bd5514d", "subnet-06b1751ad9a1ff9cd", "subnet-091ac097ba022c058"]
control_plane_subnet_ids = ["subnet-092ff0dd1b3cba5da", "subnet-0cfd9a32f99cd2aee", "subnet-0459cd529914bef6e"]
cluster_name = "fhe-mle-mlops-nonprod-cluster"
cluster_version = "1.23"
region = "us-east-2"
# bastion host sg
source_security_group_id = ["sg-0c41cba9ad960d114"]
added_auth_role         = "arn:aws:iam::391177159855:role/terraform-role"

tags = {
  project           = "fhe-mle-mlops"
  environment       = "non-prod"
  poc-name          = "test name"
  poc-email         = "test@email"
  team              = "MLOps-Infra"
}
# bastion host sg
cluster_additional_security_group_ids = ["sg-0c41cba9ad960d114"]
aws_auth_accounts                     = ["391177159855"]

managed_node_groups = {
    first_ng = {
      node_group_name = "first_ng"
      disk_size       = 50
      instance_types  = ["t3.large"]
      capacity_type   = "SPOT"
      min_size        = 1
      max_size        = 3
      desired_size    = 1
      subnet_ids      = ["subnet-03f8b8e7c6bd5514d", "subnet-06b1751ad9a1ff9cd", "subnet-091ac097ba022c058"]
    }
  }

   /* map_users                            = [{
                                  userarn  = "arn:aws:iam::391177159855:user/terraform01"
                                  username = "terraform01"
                                  groups   = ["system:masters"]
  }] */

