
resource "aws_db_subnet_group" "app_db_subnet_group" {
  name       = "app-db-subnet-group"
  subnet_ids = [aws_subnet.AppSubnet1.id, aws_subnet.AppSubnet2.id]

  tags = {
    Name = "AppDBSubnetGroup"
  }
}


data "aws_secretsmanager_secret_version" "database_password" {
  secret_id = "DatabasePassword"
}


resource "aws_db_instance" "app_database" {
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0.33"
  instance_class         = "db.t3.micro"
  identifier             = "appdatabase"
  db_name                = "appdatabase"
  username               = "admin"
  password               = data.aws_secretsmanager_secret_version.database_password.secret_string
  publicly_accessible    = true
  db_subnet_group_name   = aws_db_subnet_group.app_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.WebTrafficSG.id]
  depends_on             = [aws_internet_gateway.AppIGW]
  skip_final_snapshot    = true

  tags = {
    Name = "AppDatabase"
  }
}