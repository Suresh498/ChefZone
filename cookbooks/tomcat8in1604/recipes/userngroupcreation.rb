#
# Cookbook:: .
# Recipe:: userngroupcreation
#
# Copyright:: 2018, The Authors, All Rights Reserved.
user 'tomcat' do
  comment 'tomcat user'
  home '/opt/tomcat'
  shell '/bin/false'
  password 'password'
  action :create
end
group 'tomcat' do
  members 'tomcat'
  action :create
end
