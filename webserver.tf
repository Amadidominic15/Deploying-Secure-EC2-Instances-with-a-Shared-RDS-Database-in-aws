
resource "aws_key_pair" "web" {
  public_key = file("~/keypairs/my-ec2-key.pub")
}

resource "aws_instance" "WebServer1" {
  ami                         = "ami-06c68f701d8090592"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.web.id
  depends_on                  = [aws_internet_gateway.AppIGW]

  network_interface {
    network_interface_id = aws_network_interface.nw-interface1.id
    device_index = 0
  }
  tags = {
    Name = "WebServer1"
  }

}


resource "aws_instance" "WebServer2" {
  ami                         = "ami-06c68f701d8090592"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.web.id
  depends_on                  = [aws_internet_gateway.AppIGW]

  network_interface {
    network_interface_id = aws_network_interface.nw-interface2.id
    device_index = 0
  }
  tags = {
    Name = "WebServer2"
  }

}