resource "aws_eip" "name" {
  instance = aws_instance.ec2_instance.id
}

resource "aws_key_pair" "ssh_keys" {
  key_name   = var.kpname
  public_key = file(var.pkey_path)
}

resource "aws_instance" "ec2_instance" {
  ami           = data.aws_ami.debian.id
  instance_type = var.ec2_instance_type

  key_name = aws_key_pair.ssh_keys.id

  vpc_security_group_ids = [aws_security_group.security_group.id]

  root_block_device {
    volume_size = 8 #Gib
  }

  user_data = file("nginx-wrapper.sh")
}
