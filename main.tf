variable "vpcname" {
  type = "string"
//  default = "TestVPC"
}
variable "mylist" {
 type = "list"
 default = ["Value1", "Value2"]
}
variable "mymap" {
 type = "map"
 default = {
   Key1 = "Value 1"
   Key2 = "Value 2"
}
}
variable "myboolean" {
  default = true
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
//    Name = "${var.vpcname}"
//  Name = "${var.mylist[0]}"
   Name = "${var.mymap["Key1"]}"
  }
}
