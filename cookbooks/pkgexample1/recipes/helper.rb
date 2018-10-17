##Variable Gathering the Node Attribute
Hostname = node['hostname']
Macaddr  = node['macaddress']
Ipaddr   = node['ipaddress']

file 'File containing Attributes of node' do
	content 
"
This node has the Hostname   : #{Hostname}
This node has the MacAddress : #{Macaddr}
This node has the IpAddress  : #{Ipaddr}
"
end
