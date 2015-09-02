execute 'Create reports' do
  command "yaprt create-report --report-file #{node['yaprt-repo-server']['repo-service-home-folder']}/repos/reports/#{node['yaprt-repo-server']['report-filename']} --git-install-repos-file #{node['yaprt-repo-server']['repo-service-home-folder']}/repos/repos-file/#{node['yaprt-repo-server']['repos-filename']}"
end

execute 'Build wheels' do
  command "yaprt build-wheels \
           --report-file #{node['yaprt-repo-server']['repo-service-home-folder']}/repos/reports/#{node['yaprt-repo-server']['report-filename']} \
           --storage-pool #{node['yaprt-repo-server']['repo-service-home-folder']}/repos/pools \
           --link-dir #{node['yaprt-repo-server']['repo-service-home-folder']}/os-releases/repo-server \
           --pip-bulk-operation \
           --build-output /tmp/repo-server-wheel-output \
           --build-dir /tmp/repo-server-builder \
           --build-requirements"
end

execute 'Build main services' do
  command "yaprt build-wheels \
           --report-file #{node['yaprt-repo-server']['repo-service-home-folder']}/repos/reports/#{node['yaprt-repo-server']['report-filename']} \
           --storage-pool #{node['yaprt-repo-server']['repo-service-home-folder']}/repos/pools \
           --link-dir #{node['yaprt-repo-server']['repo-service-home-folder']}/os-releases/repo-server \
           --pip-no-deps \
           --build-output /tmp/repo-server-wheel-output \
           --build-dir /tmp/repo-server-builder \
           --build-branches \
           --build-releases"
end

execute 'Build indexes' do
  command "yaprt --quiet \
           create-html-indexes \
           --repo-dir #{node['yaprt-repo-server']['repo-service-home-folder']}/repos"
end
