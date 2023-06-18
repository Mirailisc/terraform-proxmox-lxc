resource "proxmox_lxc" "demo" {
  target_node  = var.proxmox_node
  hostname     = "argo-tunnel-1"
  ostemplate   = "local:vztmpl/ubuntu-22.04-standard_22.04-1_amd64.tar.zst"
  password     = "cloudflared"
  unprivileged = true
  memory       = 128
  cores        = 1

  rootfs {
    storage = "backup"
    size    = "2G"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
}
