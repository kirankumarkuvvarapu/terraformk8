resource "aws_iam_user" "k8" {
    name = "k8"
    path = "/"
    tags = {
        Name = "k8"
        Environment = var.environment
    }
  
}

resource "aws_iam_access_key" "k8" {
  user = aws_iam_user.k8.name
}


resource "aws_iam_user_policy_attachment" "AmazonEC2FullAccess" {
  user       = aws_iam_user.k8.name
  policy_arn = data.aws_iam_policy.AmazonEC2FullAccess.arn
}

resource "aws_iam_user_policy_attachment" "AmazonEKS_CNI_Policy" {
  user = aws_iam_user.k8.name
  policy_arn = data.aws_iam_policy.AmazonEKS_CNI_Policy.arn
}

resource "aws_iam_user_policy_attachment" "AmazonEKSClusterPolicy" {
  user = aws_iam_user.k8.name
  policy_arn = data.aws_iam_policy.AmazonEKSClusterPolicy.arn
}

resource "aws_iam_user_policy_attachment" "AmazonEKSWorkerNodePolicy" {
  user = aws_iam_user.k8.name
  policy_arn = data.aws_iam_policy.AmazonEKSWorkerNodePolicy.arn
}
