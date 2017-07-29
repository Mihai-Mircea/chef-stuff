# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html
property :content1, String, default: 'Hola Amigos!'
property :content2, String, default: 'Buna Seara Prieteni!'

action :create do
	file '/home/mmircea/spanish.greeting' do
		action :create
		content new_resource.content1
	end
	file '/home/mmircea/romanian.greeting' do
		action :create
		content new_resource.content2
	end
end


