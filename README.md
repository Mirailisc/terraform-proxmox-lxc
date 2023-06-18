# Proxmox Terraform

Create new Proxmox PAM user with root permission and generate api token

Create `secret.tfvars` and copy this
```
proxmox_api_url          = "https://<proxmox url or ip>/api2/json"
proxmox_api_token_secret = "<proxmox api secret>"
proxmox_api_token_id     = "<user>@pam!<password>"
proxmox_node             = "<proxmox node>"
```

run this command
```bash
terraform plan -var-file="secret.tfvars" && terraform apply -var-file="secret.tfvars"
```

![cun](https://github.com/Mirailisc/terraform-proxmox/blob/main/image.jpg?raw=true)
