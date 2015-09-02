template '/etc/nginx/sites-available/repo-server.vhost' do
  source 'repo-server.vhost.erb'
end

#Enable the repo-server site
link '/etc/nginx/sites-enabled/repo-server.vhost' do
  to '/etc/nginx/sites-available/repo-server.vhost'
end

service "nginx" do
  action :restart
end
  
  
