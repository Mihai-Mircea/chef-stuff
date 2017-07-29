
allnodes = search(:node, 'name:*',:filter_result => { 'name' => ['name'],
						      'ip'   => ['ipaddress'],
                                                      'platform' => ['platform']
                                                    })
allnodes.each do |n|
	puts "#{n['name']} - #{n['ip']} - #{n['platform']}"
end

hostname = node['hostname']
ip = node['ipaddress']

file 'my file' do
	path '/home/mmircea/chef.test'
	content node['hostname']
	not_if 'true'
end


file 'my second file' do
	path '/home/mmircea/chef2.test'
	content "Current hostname is #{hostname} and its IP is #{ip}"
	owner 'mmircea'
	group 'mmircea'
	only_if 'true'
end

directory 'just a folder' do
	path '/home/mmircea/created_by_Mihais_recipe'
	action :delete
	only_if 'true'
end

#apache_greetings 'my greetings' do
#	action :create
#end

execute 'print something' do
	command '/bin/echo Yeey! > /home/mmircea/echotest.test'
	action :run
end



