
#Cloning the yaprt source code
git 'Clone yaprt repo' do
  destination "/opt/yaprt/"
  repository node['yaprt-repo-server']['git-repo']
  action :sync
end

#Build the yaprt source code
execute 'python setup.py install' do
  command 'python setup.py install'
  cwd '/opt/yaprt/'
end  
