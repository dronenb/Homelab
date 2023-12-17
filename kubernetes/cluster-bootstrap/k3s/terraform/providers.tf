terraform {
  required_providers {
    ansible = {
      source  = "ansible/ansible"
      version = "1.1.0"
    }
    proxmox = {
      source = "bpg/proxmox"
      version = "0.40.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.0"
    }
  }
}
provider "proxmox" {
  endpoint = "https://10.91.1.2:8006/"
  insecure = true
  ssh {
    agent = true
  }
}
provider "http" {}