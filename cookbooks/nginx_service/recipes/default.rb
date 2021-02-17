# Author: Salar Hafezi
# Date:   2021-02-17

package 'nginx' do
  action :install
end

service 'nginx' do
  action [:enable, :start]
end
