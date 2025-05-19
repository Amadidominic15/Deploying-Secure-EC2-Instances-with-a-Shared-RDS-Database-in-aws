
resource "aws_key_pair" "web" {
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCP/t7jUx8FqTQBd03rQw4HKkE1K6vqL2l6vlr0nXqvHleJj4vRrGRj4FjYG2sKYyKyVJ0N9UDYvAbPnXQcIDVMGOOmKMalFtHN5ccglBklQi+Mt0QWMME+3uEf7g/Ka4kbTLNUXN5uCqr8w7UlsR6wb5tBV8zVNpMtuzsOsuAtxXAmZGDRnYybABjptX7MBOByfDq+e7DpKyqTYDY0eJrWwa+88gAPrR//d61vXrbZphskBjh8e6vy3g1wPPlr9IGah2T8Qc5M9W5bcNTMg4jPK+u3Gbv3ojfmVpd2zCU6/5v2g6oVBZNcdXS5cIfsZeeXaWZEEF9ojJqzj2Oie6ihmPylc6FYTcHplEQSctnoa7QJddD/iLFxb9RzTj1HeHXm4fm/lOcB7Ff8dIdXWy0u/EUUSyHoB3eWS3mGD8x+sK67+PUnujqvKM7VuirR7od/4vDabI0SEMUP2i4XTpKFovu3tSUEvVZJUsXVl7e18Pgqo3GQ0FolB1LKhz/0/UElINGTE9Bp0ynAlXuVrgHmMB8rQH1qLu+OLs+YYd2lZ6w+eNbYy9qoANNYjC41swoF6qu36mERk0ZEl/5FlwISRIRNgAaIlwSGnhc1NdUFhSMNXyBMfUBXAJEMzLfDVraaQSPxGhIfp5c8eRk+YjOQpO6nkRu2bkjM4f+AjBi26w== amadi001@DOMINIC-AMADI"
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
