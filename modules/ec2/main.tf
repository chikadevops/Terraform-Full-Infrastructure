resource "aws_instance" "public_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  count                       = var.public_ec2_number
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true
  key_name                    = var.key_name

  tags = {
    Name = "${var.project}-pub-${count.index + 1}"
  }
}

resource "aws_instance" "private_instance" {
  ami                         = var.ami
  instance_type               = var.instance_type
  count                       = var.private_ec2_number
  subnet_id                   = var.private_subnet_id_1
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true
  key_name                    = var.key_name

  tags = {
    Name = "${var.project}-pri-${count.index + 1}"
  }
}
