resource "local_file" "file" {
  count   = var.amount
  content  = var.file_content
  filename = "${path.module}/${var.file_name}_${count.index}"
}
