resource "aws_instance" "this" {
  ami = "ami-0dcc1e21636832c5d" # random ami
  instance_type = "m5.large" # size
  host_resource_group_arn = "arn:aws:resource-groups:us-west-2:012345678901:group/win-testhost" # another comment
  tenancy = "host" # yep, this too
}
