variable "amount" {
  description = "How many files to create"
  type        = number
  default     = 3
}

variable "file_content" {
  description = "The content of the files"
  type        = string
}

variable "file_name" {
  description = "The name of the files"
  type        = string
}