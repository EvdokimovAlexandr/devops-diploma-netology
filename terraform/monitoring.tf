resource "yandex_compute_instance" "monitoring" {
  name     = "monitoring"
  hostname = "monitoring.${var.name_domain}"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}
