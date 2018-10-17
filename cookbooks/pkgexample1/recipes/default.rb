#
# Cookbook:: pkgexample1
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform_family'] == 'rhel'
	pkg = 'vim-enhaced'
elsif node['platfoem_family'] == 'debian'
	pkg = 'vim'
end

package 'vim-enhance' do
	package_name  pkg
	action :install
end

