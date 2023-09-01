resource "yandex_lb_network_load_balancer" "sf-lb" {
  name = "sf-lb"
  listener {
    name = "my-listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = "enp2km19ordt4djsspkc"

    healthcheck {
      name = "http"
      http_options {
        port = 80
        
      }
    }
  }
}