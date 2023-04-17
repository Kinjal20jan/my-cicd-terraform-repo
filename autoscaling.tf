resource "aws_launch_template" "my-temp" {
  name_prefix   = "my-temp"
  image_id      = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "my-scale" {
  availability_zones = ["us-west-2a"]
  desired_capacity   = 2
  max_size           = 5
  min_size           = 1

  launch_template {
    id      = aws_launch_template.my-temp.id
    version = "$Latest"
  }
}

variable "ami" {
    type = string
    default = "ami-0747e613a2a1ff483"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}