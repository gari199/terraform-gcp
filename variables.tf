# variables.tf

variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region to deploy the instance in"
  type        = string
}

variable "zone" {
  description = "Zone to deploy the instance in"
  type        = string
}

variable "instance_name" {
  description = "Name of the VM instance"
  type        = string
  default     = "terraform-instance"
}

variable "machine_type" {
  description = "Machine type to use for the instance"
  type        = string
  default     = "f1-micro"
}

variable "image" {
  description = "Image to use for the instance"
  type        = string
  default     = "debian-cloud/debian-10"
}

variable "network" {
  description = "Network to attach the instance to"
  type        = string
  default     = "default"
}

variable "tags" {
  description = "Tags to apply to the instance"
  type        = list(string)
  default     = ["web", "dev"]
}
