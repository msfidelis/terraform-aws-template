
variable "project_name" {
    type        = string
    description = "project identifier"
    default     = "change-me"
}

variable "aws_region" {
    type        = string
    description = "AWS Region"
    default     = "us-east-1"
}

variable "default_tags" {
    type        = map(any)
    description = "Maps for default tags"
    default     = {
        Foo     = "Bar"
    }
}

#############################
######      VPC        ######
#############################

variable "vpc_dns_support" {
    type        = bool 
    description = "Enable DNS Support for VPC"
    default     = true
}