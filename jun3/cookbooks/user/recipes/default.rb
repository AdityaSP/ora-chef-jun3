user 'userjun6' do
  home '/home/userjun6'
  shell '/bin/bash'
  password '$1$aNenDpoI$26X77RXKaD.iFKZjlMdMT.'
end

group 'userjun6' do
  action :create
  members 'userjun6'
end

directory '/home/userjun6' do
  owner 'userjun6'
  group 'userjun6'
  mode '0755'
  action :create
end
