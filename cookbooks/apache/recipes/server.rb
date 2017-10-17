package 'httpd'

file '/var/www/html/index.html' do
  content 'Hello World!'
end

service 'httpd' do
  action:enable
  action:start
end
