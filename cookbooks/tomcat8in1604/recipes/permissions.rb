#
# Cookbook:: .
# Recipe:: permissions
#
# Copyright:: 2018, The Authors, All Rights Reserved.
execute 'group ownership' do
  command 'chgrp -R tomcat /opt/tomcat'
  action :run
end
execute 'group read aceess' do
  command 'chmod -R g+r /opt/tomcat/conf'
  action :run
end
execute 'execute' do
  command 'chmod g+x /opt/tomcat/conf'
  action :run
end
execute 'ownership' do
  command 'chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/'
  action :run
end
