service 'gmetad' do
  if node[:platform_family] == 'debian' && node[:platform_version] == '14.04'
    provider Chef::Provider::Service::Upstart
  end
  supports :status => false, :restart => true
  action :nothing
end
