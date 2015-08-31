default['yaprt-repo-server']['git-repo'] = "https://github.com/cloudnull/yaprt.git"
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



