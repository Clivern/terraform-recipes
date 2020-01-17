resource "digitalocean_droplet" "web" {
    image = "ubuntu-18-04-x64"
    name = "${var.droplet_name}"
    region = "ams3"
    size = "s-2vcpu-2gb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]

    connection {
        user = "root"
        type = "ssh"
        private_key = "${file(var.pvt_key)}"
        timeout = "2m"
    }

    provisioner "remote-exec" {
        inline = [
            "apt-get update",
            "apt install -y docker.io",
            "systemctl enable docker",
            "curl -L \"https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)\" -o /usr/local/bin/docker-compose",
            "sudo chmod +x /usr/local/bin/docker-compose"
        ]
    }
}
