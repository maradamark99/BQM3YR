output "answers" {
  value = {
    for key, value in var.answers :
    key => value
  }
}