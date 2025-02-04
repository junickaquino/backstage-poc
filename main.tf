terraform { 
  required_version = ">= 0.15"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "random_password" "password" {
    length = 16
    special = true
    override_special = "_%@/'\""
}
 
resource "local_file" "literature" {
  filename = "art_of_war.txt"
  content  = "Hello HiHihI"
}