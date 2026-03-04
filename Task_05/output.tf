output "file_creation_success" {
    value = "Successfully created the local file: ${local_file.hello_file.filename}"
    description = "Success message pointing to the created file"
}