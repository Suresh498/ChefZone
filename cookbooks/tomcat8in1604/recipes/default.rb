#
# Cookbook:: tomcat8in1604
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'tomcat8in1604::java'
include_recipe 'tomcat8in1604::userngroupcreation'
include_recipe 'tomcat8in1604::downloadfile'
include_recipe 'tomcat8in1604::extract'
include_recipe 'tomcat8in1604::permissions'
include_recipe 'tomcat8in1604::startup'
#include_recipe 'tomcat8in1604::restart'
