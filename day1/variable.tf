variable "image_id" {
  default = "ami-0c94855ba95c71c99"
  type    = string

validation {
  condition     = length(var.image_id) > 0 && substr(var.image_id, 0, 4) == "ami-"
  error_message = "The image_id variable must be a valid AMI ID."
}
}