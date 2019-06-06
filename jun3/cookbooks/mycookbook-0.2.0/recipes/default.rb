file '/tmp/helloworld.txt' do
  content 'username=tiger'
  action :create
end

envs = ['dev','prod','ua']

envs.each do |env|
  file "/tmp/#{env}.cnf" do
    action :create
  end
end

include_recipe 'mycookbook::stop'
