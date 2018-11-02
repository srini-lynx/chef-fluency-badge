#
# Cookbook:: apche_multi
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
	package = "httpd"
	service = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
	service = "apache2"
end

package 'Apache Package Installation' do
	package_name package
	action :install
end

service 'Apache Service Start/Enable' do
	service_name service 
	action [:enable,:start]
end
