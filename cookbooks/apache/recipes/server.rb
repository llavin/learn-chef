package 'httpd'

file '/var/www/html/index.html' do
  content "Hello World!
  HOSTNAME: #{node['hostname']}
  IP: #{node['ipaddress']}\n"
end

service 'httpd' do
  action:enable
  action:start
end
