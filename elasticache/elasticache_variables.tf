variable "cluster_id" {
	type = "string"
	default ="test-cluster"
}

variable "engine" {
	default = "redis"
}

variable "node_type" {
	default = "cache.t2.large"
}

variable "num_cache_nodes" {
	default = 1
}

variable "parameter_group_name" {
	default = "default.redis3.2"
}

variable "engine_version" {
	default = "3.2.10"
}

variable "port" {
	default = 6379
}

