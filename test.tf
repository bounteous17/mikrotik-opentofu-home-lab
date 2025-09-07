data "routeros_system_resource" "test" {}

output "mikrotik_test" {
  value = data.routeros_system_resource.test
}