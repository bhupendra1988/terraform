resource "aws_instance" "testing" {
  ami           = "ami-0d9462a653c34dab7"
  instance_type = "t2.medium"

tags = {
 Name = "ec2"
 }
}
