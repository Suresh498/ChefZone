package_name = node['package_name']
package package_name do
	action :install
end
service package_name do
    action :start
end