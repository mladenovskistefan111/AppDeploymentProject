# --- root/outputs.tf ---

output "rds_endpoint" {
  value = module.database.rds_endpoint
}