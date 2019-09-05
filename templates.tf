data "template_file" "trust-policy" {
  template = "${file("${path.module}/templates/trust_policy.tpl")}"
  vars = {
    assume_role_principal_arn = "${var.assume_role_principal_arn}"
    firehydrant_external_id = "${var.firehydrant_external_id}"
  }
}
