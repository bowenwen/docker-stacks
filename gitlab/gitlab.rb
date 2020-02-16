## GitLab configuration settings
##! This file is generated during initial installation and **is not** modified
##! during upgrades.
##! Check out the latest version of this file to know about the different
##! settings that can be configured by this file, which may be found at:
##! https://gitlab.com/gitlab-org/omnibus-gitlab/raw/master/files/gitlab-config-template/gitlab.rb.template

external_url 'http://localhost';
gitlab_rails['time_zone'] = 'America/Vancouver'
gitlab_rails['gitlab_default_theme'] = 7
gitlab_rails['manage_backup_path'] = false
gitlab_rails['backup_path'] = "/etc/gitlab/gitlab-backup"
gitlab_rails['initial_root_password'] = "test"