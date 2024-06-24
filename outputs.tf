output "instance_name" {
  description = "The name of the VM instance"
  value       = google_compute_instance.vm.name
}

output "instance_self_link" {
  description = "The self link of the VM instance"
  value       = google_compute_instance.vm.self_link
}

output "instance_external_ip" {
  description = "The external IP address of the VM instance"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}
