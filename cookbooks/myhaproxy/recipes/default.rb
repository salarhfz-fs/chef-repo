haproxy_install 'package'

haproxy_frontend 'http-in' do
  bind '*:80'
  default_backend 'servers'
end

haproxy_backend 'servers' do
  server [
    'chefnode01 10.138.1.27:80 maxconn 32',
    'chefnode02 10.138.1.67:80 maxconn 32',
  ]
end

haproxy_service 'haproxy' do
  subscribes :reload, 'template[/etc/haproxy/haproxy.cfg]', :immediately
end
