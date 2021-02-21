package 'apache2'

file '/var/www/html/index.html' do
  content "<html><head></head><body>Hello World from #{node['hostname']}</body></html>"
end

service 'apache2' do
  action [ :enable, :start ]
end
