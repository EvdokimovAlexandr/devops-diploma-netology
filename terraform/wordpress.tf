resource "yandex_compute_instance" "WordPress" {
  name     = "app"
  hostname = "app.${var.name_domain}"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = 5
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
  }

  metadata = {
    user-data = "${file("meta.txt")}"
  }
}
