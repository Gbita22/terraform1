provider   "aws" {
     region = "us-east-1"
}

resource "aws_instance" "terraform-demo" {
     ami = "ami-090fa75af13c156b4"
     instance_type = "t2.micro"
     key_name ="key1"
     tags = {
         Name =  "Jenkins"
         env  = "dev"
     }
}

output "publicip"{
          value = aws_instance.terraform-demo.public_ip
     }
output "publicdns"{
          value = aws_instance.terraform-demo.public_dns
     }