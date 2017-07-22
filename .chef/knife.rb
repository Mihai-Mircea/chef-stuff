# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mmircea"
client_key               "#{current_dir}/mmircea.pem"
chef_server_url          "https://UbuntuServer1604.eroo2mdw4ndunnvlrtbrrfxl3a.ax.internal.cloudapp.net/organizations/learnchef"
cookbook_path            ["#{current_dir}/../cookbooks"]
