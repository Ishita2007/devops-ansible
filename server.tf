provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "myawsserver" {
  ami = "ami-0d04ec5e487a9affa"
  instance_type = "t2.micro"
  key_name = "Ishita_Kandeyang"

  tags = {
    Name = "Ishita-devops-terraform"
    env = "Development"
    owner = "Ishita"
  }
  provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /tmp/inv"
  }
}

