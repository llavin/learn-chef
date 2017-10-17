template '/etc/motd' do
  source 'motd.erb'
  action :create
end

package 'git' do
  action:install
end

package 'nano'
package 'ntp'
package 'tree'
