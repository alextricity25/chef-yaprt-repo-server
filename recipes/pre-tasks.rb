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

template "Create repos file" do
  path "/var/www/repos/repos-file/#{node['yaprt-repo-server']['repos-filename']}" 
  source 'repo-file.txt.erb'
end

remote_file '/root/get-pip.py' do
  source node['yaprt-repo-server']['get-pip-url']
  action :create
end

execute 'Run get-pip.py' do
  command "python /root/get-pip.py"
end
