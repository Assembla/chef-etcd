#
# Cookbook Name:: chef-etcd
# Recipe:: config
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory node.etcd.data_dir do
  mode 0755
end

template '/etc/default/etcd' do
  source 'etc/default/etcd.erb'
end

template '/etc/init.d/etcd' do
  source 'etc/init.d/etcd.erb'
  mode 0755
end

service 'etcd' do
  supports status: true, restart: true, reload: true
  action [ :enable, :start ]
  subscribes :restart, 'template[/etc/default/etcd]'
end