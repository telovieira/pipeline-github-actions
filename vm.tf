#resource "aws_key_pair" "key" {
#  key_name   = "aws-key"
#  public_key = file("./aws-key.pub")
#  public_key = file("/Users/telo/Documents/my-ubuntu-keypar.pem")
#}

data "aws_key_pair" "key" {
  key_name           = "my-ubuntu-keypar"
  include_public_key = true
}


resource "aws_instance" "vm" {
  ami                         = "ami-0a58342ee11775c33" # lpr-v7
  instance_type               = "t2.large"  
  key_name                    = data.aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.myvpc.outputs.subnet_id # "vpc-03a62f79ab03621de" # 
  vpc_security_group_ids      = [data.terraform_remote_state.myvpc.outputs.security_group_id] # "sg-06d2b4ddff8bd7897" # 
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform"
  }
}
