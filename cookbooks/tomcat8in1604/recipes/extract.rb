#
# Cookbook:: .
# Recipe:: extract
#
# Copyright:: 2018, The Authors, All Rights Reserved.
directory '/opt/tomcat' do
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end
execute 'untar' do
  command 'tar xvf /home/ubuntu/apache-tomcat-8.5.5.tar.gz -C /opt/tomcat --strip-components=1'
  action :run
  not_if { ::File.exist?('/opt/tomcat/LICENSE') }
end
