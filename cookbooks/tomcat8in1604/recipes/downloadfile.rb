#
# Cookbook:: .
# Recipe:: downloadfile
#
# Copyright:: 2018, The Authors, All Rights Reserved.
remote_file '/home/ubuntu/apache-tomcat-8.5.5.tar.gz' do
  source 'https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.5/bin/apache-tomcat-8.5.5.tar.gz'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
