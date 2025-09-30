resource "aws_bucket" "example" {
  bucket = "${env}-bucket-for-githubactions-example"
  acl    = "private"
  env=   "prd"

  tags = {
    Name        = "My example bucket for GitHub Actions"
    Environment = "Dev"
  }
  in_parent_folder = true
}
