resource "incus_profile" "red" {
  name = "red"

  device {
    name = "eth0"
    type = "nic"

    properties = {
      nictype = "bridged"
      network  = "${incus_network.red.name}"  
    }
  }

  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "pool"
      path = "/"
    }
  }
}

resource "incus_profile" "blue" {
  name = "blue"

  device {
    name = "eth0"
    type = "nic"

    properties = {
      nictype = "bridged"
      network  = "${incus_network.blue.name}"
    }
  }

  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "pool"
      path = "/"
    }
  }
}

resource "incus_profile" "purple" {
  name = "purple"

  device {
    name = "eth0"
    type = "nic"

    properties = {
      nictype = "bridged"
      network  = "${incus_network.purple.name}"
    }
  }

  device {
    type = "disk"
    name = "root"

    properties = {
      pool = "pool"
      path = "/"
    }
  }
}
