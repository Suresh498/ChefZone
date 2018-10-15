#
# Cookbook:: .
# Recipe:: startup
#
# Copyright:: 2018, The Authors, All Rights Reserved.
cookbook_file '/etc/systemd/system/tomcat.service' do
  source 'tomcat.service'
  mode '0755'
  action :create
end
execute 'reload' do
  command 'systemctl daemon-reload'
  action :run
  not_if { ::File.exist?('/home/ubuntu/test') }
end
execute 'start' do
  command 'systemctl start tomcat'
  action :run
  not_if { ::File.exist?('/home/ubuntu/test') }
end
execute 'status' do
  command 'systemctl status tomcat'
  action :run
end
execute 'firewall' do
  command 'ufw allow 8080'
  action :run
  not_if { ::File.exist?('/home/ubuntu/test') }
end
file '/home/ubuntu/test' do
  content 'content'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
