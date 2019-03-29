resource "aws_dynamodb_table" "table" {
  name           = "tablename"
  billing_mode   = "${var.billing_mode}"
  read_capacity  = "${var.table_rcu}"
  write_capacity = "${var.table_wcu}"
  hash_key       = "keyname"
  range_key      = "rangekeyname"
  
  attribute {
    name = "keyname"
    type = "N"
  }
  
  attribute {
    name = "rangekeyname"
    type = "N"
  }
  
  attribute {
    name = "gsikeyname"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = "gsi_name"
    hash_key           = "gsikeyname"
    read_capacity      = "${var.gsi_rcu}"
    write_capacity     = "${var.gsi_wcu}"
    projection_type    = "${var.gsi_projection}"
    non_key_attributes = "${var.gsi_non_key_attributes}"
  }

 tags = {
    Name        = "dynamodb-tags"
  }
}
