# Author: Salar Hafezi
# Date:   2021-02-17

package 'nginx' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

template '/etc/nginx/sites-enabled/main.conf' do
  source 'main.conf.erb'
end

service 'nginx' do
  action [:enable, :start]
end
