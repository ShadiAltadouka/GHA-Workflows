resource "aws_iam_user" "user" {
    name = "GHA-workflow"
  
}

resource "aws_iam_group" "group" {
    name = "GHA"
  
}

resource "aws_iam_user_group_membership" "membership" {
    groups = [aws_iam_group.name]
    user = aws_iam_user.user.name
  
}