external_url 'http://gitliab.example.com/'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password')
letsencrypt['enable'] = false