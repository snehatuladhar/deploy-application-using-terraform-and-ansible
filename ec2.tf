module "ec2" {
  source                      = "./ec2"
  instance_count              = 1
  ami_id                      = "ami-08a0d1e16fc3f61ea"
  subnet_id                   = "subnet-0639d260294d92a5d"
  network-security-group-name = "securitygroup-sneha"
  vpc_id                      = "vpc-03d964f7cd3fa2c74"
  iam_instance_profile        = "sneha-role"
  user_data                   = file("/Users/snehatuladhar/Documents/cloudintern/modules/userdata.sh")
  key_name                    = "amisneha"
}