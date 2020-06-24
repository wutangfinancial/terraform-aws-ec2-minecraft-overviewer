provider "aws" {
  version = "~> 2.67"
  region = "us-east-1"
}

variable "my_ami" {
  type    = "string"
  default = "ami-ami-0e9089763828757e1"
}

variable "my_subnet" {
  type    = "string"
  default = "subnet-3805d964"
}

variable "my_key" {
  type    = "string"
  default = "amzn-detwa-east"
}

variable "my_minecraft_secgroups" {
  type    = "list"
  default = ["sg-01954e4a","sg-001e78a5ce776e8f0"]
}

variable "my_route53_zone_id" {
  type    = "string"
  default = "Z20NBA4QJSYPCC"
}
