provider "aws" {
  region = "us-east-1"
}

data "aws_workspaces_bundle" "value_linux_bundle" {
  bundle_id = var.bundle-id # Value with Amazon Linux (English)
}

data "aws_workspaces_directory" "lab_dir" {
  directory_id = var.directory-id
}

resource "aws_workspaces_workspace" "workspace" {
  directory_id = data.aws_workspaces_directory.lab_dir.id
  bundle_id    = data.aws_workspaces_bundle.value_linux_bundle.id
  user_name    = var.users[count.index]
  count = var.usernr

  workspace_properties {
    compute_type_name                         = "VALUE"
    user_volume_size_gib                      = 10
    root_volume_size_gib                      = 80
    running_mode                              = "AUTO_STOP"
    running_mode_auto_stop_timeout_in_minutes = 60
  }
}

