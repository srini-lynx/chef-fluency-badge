#
# Cookbook:: qapache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
if node['platform_family'] == "rhel"
	pkg = "httpd"
elsif node['platform_family'] == "debian"
	pkg = "apache2"
end

package 'apache' do
	package_name pkg
	action :install
end

service 'apache' do
	service_name pkg 
	action [:start, :enable]
end

include_recipe 'motd.rb'
