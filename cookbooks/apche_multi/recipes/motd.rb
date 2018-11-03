#
# Cookbook:: apche_multi
# Recipe:: motd
#
# Copyright:: 2018, The Authors, All Rights Reserved.

hostname = node['hostname']
ipaddr   = node['ipaddress']
platform = node['platform_family']

file '/tmp/file.txt' do

content " 

***********************************************
Please find the Node info Below 
***********************************************
Hostname  : #{hostname}
ipaddress : #{ipaddr}
platform  : #{platform}
***********************************************
"
end
