resource "aws_instance" "foot_size_predict" {
  ami                    = var.ec2_ami_id
  instance_type          = "t2.micro"
  key_name               = "key-for-ec2-instance"
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "ec2_security_group" {
  egress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  ingress = [
    {
      cidr_blocks      = ["0.0.0.0/0", ]
      description      = ""
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    }
  ]
}

resource "aws_key_pair" "key_for_ec2_instance" {
  key_name   = "key-for-ec2-instance"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCt6D69lNCJdZtnxzfuj9m0wSyxLcGoagET3VEhXg7qh9dhXzZMDw9KsR/q856Q4Aa2IlYO3dPJ10Jx+xpSlnqn+GB3hfnQSNx8rDr8cBz2+lRd0fLmdVrW3ZJKNBfAhdHCo5OI2u6Q9PRflneYtdnEgrwTs2I1iTV5dCAtStORMI6PWw4iGou693Zn/Cprd4aruQJVBCpeyKJ5rX5BqVY4vT2Q9iCrntGJKsglv+L1tNLNqhE8dGacae8UQBgg1WtopNI28SZAROFuSPJvwBgM039Uf0DD1kxg+kfFqtQkUNLEy+HoOiDatCJRZ3AH+BOrnXFTM9VzgcJwygQ07HjN isurika@ATHENA"

}
