#
# Cookbook:: motd_test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

template '/tmp/motd' do
	source 'modt_test.txt.erb'
end
