data "aws_iam_policy" "AmazonEC2FullAccess" {
    name = "AmazonEC2FullAccess"
  
}

data "aws_iam_policy" "AmazonEKS_CNI_Policy" {
    name = "AmazonEKS_CNI_Policy"
  
}

data "aws_iam_policy" "AmazonEKSClusterPolicy" {
    name = "AmazonEKSClusterPolicy"
  
}

data "aws_iam_policy" "AmazonEKSWorkerNodePolicy" {
    name = "AmazonEKSWorkerNodePolicy"
}

data "aws_iam_policy" "AmazonECS_FullAccess" {
    name = "AmazonECS_FullAccess"
}

#arn:aws:iam::aws:policy/AmazonEC2FullAccess
#arn:aws:iam::aws:policy/AmazonECS_FullAccess
#arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy
#arn:aws:iam::aws:policy/AmazonEKSClusterPolicy
#arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy