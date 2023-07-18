variable "availability_zone_names" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "region_name" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type    = string
  default = "ami-035d5a37453ff6884"
}

variable "instance_type" {
  type    = string
  default = "t2.large"
}

