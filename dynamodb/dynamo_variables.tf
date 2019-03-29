variable "billing_mode" {
	type = "string"
	default ="PROVISIONED"
}

variable "table_rcu" {
	default = 5
}

variable "table_wcu" {
	default = 5
}

variable "gsi_rcu" {
	default = 5
}

variable "gsi_wcu" {
	default = 5
}

variable "gsi_projection" {
	default = "ALL"
}

variable "gsi_non_key_attributes" {
	default = []
}

