file '/tmp/helloworld.txt' do
  content 'username=scott'
  action :create
end

envs = ['dev','prod','ua']

envs.each do |env|
  file "/tmp/#{env}.cnf" do
    action :create
  end
end

log "Ipaddress is #{node['ipaddress']}"
log "Linux kernel name is #{node['kernel']['name']}"
