resource "aws_instance" "ec2demo" {
  ami           = "ami-011c99152163a87ae"
  instance_type = "t2.small"
  tags = {
    Name             = "ec2-phpdemo"
    Created_By       = "Terraform_Automation"
    Application_Name = "Terraform_Demo"

  }

  key_name               = "ShubhamAWS"
  subnet_id              = "subnet-90cc23fb"
  

  user_data = <<-EOF
                #!/bin/bash 
                yum update -y 
                yum install wget 
                wget https://www.apachefriends.org/xampp-files/7.0.23/xampp-linux-x64-7.0.23-0-installer.run 
                chmod +x xampp-linux-x64-7.0.23-0-installer.run 
                ./xampp-linux-x64-7.0.23-0-installer.run 
                sudo /opt/lampp/lampp start
                sudo /opt/lampp/lampp restart
                EOF
}
