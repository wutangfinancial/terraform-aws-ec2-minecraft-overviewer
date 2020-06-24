###############################################################################
# overviewer Web Instance
###############################################################################
resource "aws_instance" "overviewer" {
  ami = "${var.my_ami}"
  subnet_id = "${var.my_subnet}"
  key_name = "${var.my_key}"
  vpc_security_group_ids = ["${var.my_minecraft_secgroups}"]
  instance_type = "t2.micro"
  disable_api_termination = true
  
  tags {
    Name = "overviewer"
  }

  #provisioner "remote-exec" {
  #  inline = [
  #    "curl https://raw.githubusercontent.com/wutangfinancial/my_hab_bootstrap/master/bootstrap.sh | sudo bash",
  #  ]
    
   # connection {
   #   type     = "ssh"
   #   user     = "ec2-user"
   #   private_key = "${file("/home/sal/.ssh/id_rsa")}"
   # }
  #}
}

resource "aws_route53_record" "overviewer" {
  zone_id = "${var.my_route53_zone_id}"
  name    = "overviewer.detwah.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.overviewer.public_ip}"]
}

