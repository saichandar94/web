provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAJWYASN57BFPUEMOA"
  secret_key = "R7LJS78rWiLDAmaiait+HIennzaB3BOlbSRQIMgj"
}
resource "aws_instance" "example" {
ami = "ami-0ad42f4f66f6c1cc9"
instance_type="t2.micro"
}

