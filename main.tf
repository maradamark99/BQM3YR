module "files" {
  source       = "./modules/files"
  file_content = "test"
  file_name    = "test"
}

module "read" {
  source                = "./modules/read"
  read_input_from_files = module.files.file_content_md5
}

module "write" {
  source  = "./modules/write"
  answers = var.answers
}

module "data" {
  source = "./modules/data"
  generated_file_path = module.files.first_file_name
  depends_on = [ module.files ]
}

variable "answers" {
  type = map(string)
  default = {
    "" = ""
  }
}