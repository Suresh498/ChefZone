default['package_name'] = "apache2"
if node['platform'] == "redhat"
    # do redhat things
      default['package_name'] = "httpd"
end