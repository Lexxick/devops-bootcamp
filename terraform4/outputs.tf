output "rackula_server" {
  value = module.my_server.public_ip
}

output "rackula_url" {
  value = "http://${module.my_server.public_ip}:8080"
}
