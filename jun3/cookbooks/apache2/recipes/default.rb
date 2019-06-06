node.default['apache']['port']=9998

package 'apache2' do
  action :install
end

service 'apache2' do
  action [:enable, :start]
end

template '/etc/apache2/ports.conf' do
  source 'ports.conf.erb'
  notifies :restart, 'service[restart apache]', :immediate
end

service 'restart apache' do
  service_name 'apache2'
  action :nothing
end
