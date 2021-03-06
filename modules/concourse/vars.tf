variable "domain" {}

variable "ingress" {
  description = "Used to specify which Ingress controller should serve a particular Ingress object.  Choices are: [ contour, nginx ]."
}

variable "concourse_username" {
  default = "admin"
}

variable "kubeconfig_path" {}
