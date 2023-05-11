module "files" {
  source       = "./modules/files"
  file_content = "test"
  file_name    = "test"
}