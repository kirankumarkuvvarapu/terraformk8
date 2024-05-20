output "credentials" {
    description = "Credentials for k8 user"
  value = [aws_iam_access_key.k8.id,aws_iam_access_key.k8.secret]
  sensitive = true
}

