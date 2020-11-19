provider "aws" {
  version = "~> 3.0"
  region = "us-east-1"
}

variable "my_ami" {
  type    = string
  default = "ami-0e9089763828757e1"
}

variable "my_subnet" {
  type    = string
  default = "subnet-3805d964"
}

variable "my_key" {
  type    = string
  default = "amzn-detwa-east"
}

variable "my_minecraft_secgroups" {
  type    = list
  default = ["sg-01954e4a"]
}

variable "my_route53_zone_id" {
  type    = string
  default = "Z37X3NLODX317I"
}
