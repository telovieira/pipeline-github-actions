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

variable "access_credential" {
  type    = string
  default = "AKIAQY6GKTXNK65OVS5W"
}

variable "secret_credential" {
  type    = string
  default = "PSzfn6njc0DY/c2ijH8RNgSZawWc9u3eeJSUjHVb"
}

# export AWS_ACCESS_KEY_ID=AKIAQY6GKTXNK65OVS5W
# export AWS_SECRET_ACCESS_KEY=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
