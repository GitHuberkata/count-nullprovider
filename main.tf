terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "null" {
  # Configuration options
}
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "myec2" {
ami = "ami-0aa7d40eeae50c9a9"
instance_type = "t2.micro"
count = 3

tags = {
  Name = "VM-${count.index}"
}

}
variable "totalNum" {
  default = "3"
  
}
resource "null_resource" "localexec" {
provisioner "local-exec" {
    
    command = <<EOT
    echo 'Total number of VMs created is: ${var.totalNum}'
    EOT
  }

}
