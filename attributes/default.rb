default['yaprt-repo-server']['report-filename'] = "repo-server-report.json"
default['yaprt-repo-server']['repos-filename'] = "repo-server-repos-file.txt"

# The git repos yaprt will buld the python wheels from
default['yaprt-repo-server']['git_repos'] = %w(
  git+https://github.com/elextro/osprofiler@master
)

default['yaprt-repo-server']['yaprt-git-repo'] = "https://github.com/cloudnull/yaprt.git"
default['yaprt-repo-server']['repo-service-home-folder'] = '/var/www'
default['yaprt-repo-server']['repo-service-user-name'] = 'nginx'
default['yaprt-repo-server']['repo_service_group_name'] = 'www-data'

default['yaprt-repo-server']['repo-server-port'] = '8181'
default['yaprt-repo-server']['repo-server-name'] = 'my-repo'

default['yaprt-repo-server']['report-file'] = "/var/www/repos/reports/report.json"
default['yaprt-repo-server']['repos-file'] = "/var/www/repos/repos-file/repos-file.txt"

#Directories that yaprt expects
default['yaprt-repo-server']['directories'] = %w(
  /var/www
  /var/www/repos/
  /var/www/repos/os-releases
  /var/www/repos/pools
  /var/www/repos/reports/
  /var/www/repos/repos-file
)


#Apt pacakges to install
default['yaprt-repo-server']['apt-packages'] = %w(
  python-pip
  git
  vim
)


#Pip settings
default['yaprt-repo-server']['get-pip-url'] = "https://bootstrap.pypa.io/get-pip.py"
