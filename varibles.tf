################################
#### required variables#########
################################

variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "address_space" {
  type = list(any)
}
variable "location" {
  type = string
}

################################
#### optional variables#########
################################


variable "bgp_community" {
  type    = string
  default = null
}
variable "ddos_protection_plan" {
  type = object({
    enable = bool
    id     = string
  })
  default = null
}
variable "dns_servers" {
  type    = list(any)
  default = null
}
variable "edge_zone" {
  type    = string
  default = null
}
variable "flow_timeout_in_minutes" {
  type    = number
  default = null
}
variable "subnet" {
  type    = any
  default = null
}
variable "tags" {
  type    = any
  default = null
}
