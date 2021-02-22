package 'apache2'

template '/var/www/html/index.html' do
  source 'apache_index.erb'
  variables(
    hostname: node['hostname']
  )
  action :create
end

cookbook_file '/var/www/html/about_us.html' do
  source 'about_us.html'
  action :create
end

service 'apache2' do
  action [ :enable, :start ]
end
