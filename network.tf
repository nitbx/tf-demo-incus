resource "incus_network" "red" {
  name = "ovn-red"
  type = "ovn"
  
  config = {
    "network" = "UPLINK100",
    "security.acls.default.egress.action" = "allow",
    "security.acls.default.ingress.action" =  "allow"
  }
}

resource "incus_network" "blue" {
  name = "ovn-blue"
  type = "ovn"
  
  config = {
    "network" = "UPLINK200",
    "security.acls.default.egress.action" = "allow",
    "security.acls.default.ingress.action" =  "allow"
  }
}

resource "incus_network" "purple" {
  name = "ovn-purple"
  type = "ovn"
  
  config = {
    "network" = "UPLINK300",
    "security.acls.default.egress.action" = "allow",
    "security.acls.default.ingress.action" =  "allow"
  }
}


