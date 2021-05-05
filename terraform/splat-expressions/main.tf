variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["zenek", "andrzej", "michal"]
}

resource "aws_iam_user" "users" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}
