include_recipe "apt"
include_recipe "nginx"

node['yaprt-repo-server']['apt-packages'].each do |package|
  apt_package "#{package}" do
    action :install
  end
end

node['yaprt-repo-server']['directories'].each do |directory|
  directory "#{directory}" do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
  end
end

directory '/var/www/repos/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
