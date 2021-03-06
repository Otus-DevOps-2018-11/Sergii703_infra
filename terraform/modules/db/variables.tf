variable public_key_path {
  description = "Path to the public key used for ssh"
}

variable zone {
  description = "Zone"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable environment {
  description = "Environment: prod, stage, etc"
  default     = "prod"
}
