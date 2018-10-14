hostname   = node['hostname']
ipaddress  = node['ipaddress']
macaddress = node['macaddress']

file '/tmp/host_info' do

content "

Hostname : #{hostname}
Ip Add   : #{ipaddress}
Mac Add  : #{macaddress}

"

end

