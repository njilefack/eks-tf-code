vpc_id                    = "vpc-0c46b72b9bc941ae8"
private_subnet_ids        = ["subnet-0965380c2206b0650", "subnet-080d3590143099549", "subnet-04fd67fff31310f22"]
control_plane_subnet_ids  = ["subnet-017d9ca5540337580", "subnet-04499801cf614ddf6", "subnet-027ab9b6822e74db5"]
cluster_name = "eks-cluster"
cluster_version = "1.23"
region = "us-west-2"
# bastion host sg
source_security_group_id  = ["sg-01a03e324dfa140c6"] # Don't forget to update bastion sg in main.tf line 170
added_auth_role           = "arn:aws:iam::391177159855:role/terraform-role"

tags = {
  project       = "eks-lab"
  poc           = "Jil"
  poc-email     = "email@email.com"
}

# bastion host sg
cluster_additional_security_group_ids = ["sg-01a03e324dfa140c6"]
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
      subnet_ids      = ["subnet-0965380c2206b0650", "subnet-080d3590143099549", "subnet-04fd67fff31310f22"]
    }
  }

   /* map_users                            = [{
                                  userarn  = "arn:aws:iam::391177159855:user/terraform01"
                                  username = "terraform01"
                                  groups   = ["system:masters"]
  }] */

