# Specific the cluster host address and make sure you have
# permissions to access certificate files generated by kubeadm

variable "cluster_host" {
  description = "The host of Kubernetes api server."
  # default     = "https://192.168.2.1:6443"
}

# Certificate files generated by kubeadm needs root.
variable "cluster_client_certificate_file" {
  description = "PEM-encoded client certificate for TLS authentication."
  default     = "/etc/kubernetes/pki/apiserver-kubelet-client.crt"
}

variable "cluster_client_key_file" {
  description = "PEM-encoded client certificate key for TLS authentication."
  default     = "/etc/kubernetes/pki/apiserver-kubelet-client.key"
}

variable "cluster_ca_certificate_file" {
  description = "PEM-encoded root certificates bundle for TLS authentication."
  default     = "/etc/kubernetes/pki/ca.crt"
}
