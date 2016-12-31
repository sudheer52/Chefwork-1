#
# Cookbook Name:: chef_https
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'apache2'

service 'apache2' do
supports :status => true
action [:enable, :start]
end

template '/var/www/html/index.html' do
source 'index.html.erb'
end
