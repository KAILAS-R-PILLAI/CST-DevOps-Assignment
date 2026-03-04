resource "local_file" "hello_file" {
    filename = "hello.txt"
    content = "Hello, Terraform"
}