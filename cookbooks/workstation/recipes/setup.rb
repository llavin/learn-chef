file '/etc/motd' do
  content "This server is the property of llavin
  HOSTNAME: #{node['hostname']}
  IP ADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}\n"
  owner 'root'
  group 'root'
end

package 'git' do
  action:install
end

package 'nano'
package 'ntp'
package 'tree'
