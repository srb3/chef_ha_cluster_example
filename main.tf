module "chef_backend_cluster" {
  source                          = "devoptimist/chef-backend/linux"
  version                         = "0.0.6"
  bootstrap_node_ip               = var.bootstrap_node_public_ip
  peers                           = var.bootstrap_node_private_ip
  backend_ips                     = var.backend_public_ips
  frontend_ips                    = var.frontend_public_ips
  frontend_private_ips            = var.frontend_private_ips
  frontend_node_count             = var.frontend_node_count
  ssh_user_name                   = var.ssh_user_name
  ssh_user_private_key            = var.ssh_user_private_key_path
  extra_frontend_config           = var.extra_frontend_config
  postgresql_superuser_password   = var.postgresql_superuser_password
  postgresql_replication_password = var.postgresql_replication_password
  etcd_initial_cluster_token      = var.etcd_initial_cluster_token
  elasticsearch_cluster_name      = var.elasticsearch_cluster_name
  force_frontend_chef_run         = var.force_frontend_chef_run
  timeout                         = var.timeout
}
