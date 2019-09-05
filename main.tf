resource "aws_iam_role" "firehydrant-readonly" {
  name = "firehydrant-readonly"
  path = "${var.role_path}"

  assume_role_policy = "${data.template_file.trust-policy.rendered}"

  tags = {
    purpose = "firehydrant-cloudtrail-readonly"
  }
}

resource "aws_iam_role_policy_attachment" "firehydrant-cloudtrail-readonly" {
  role       = "${aws_iam_role.firehydrant-readonly.name}"
  policy_arn = "${aws_iam_policy.cloudtrail-readonly.arn}"
}

resource "aws_iam_policy" "cloudtrail-readonly" {
  name        = "firehydrant-cloudtrail-readonly"
  description = "Allows FireHydrant to read CloudTrail events"

  policy = "${file("${path.module}/policies/policy.json")}"
}
