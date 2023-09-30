resource "aws_instance" "this" {
  ami                     = "ami-01d759ba3c7fbe5fd"
  instance_type           = "t2.micro"
  tags = {
    Name = "githubactionsec2"
  }
}
