#
# Cookbook Name:: chef-etcd
# Recipe:: config
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

def build_client_urls(proto,addr_array)
  addr_array.map{|addr| "#{proto}://#{addr}:#{node.etcd.clients_port}"}.join(',')
end

directory node.etcd.data_dir do
  mode 0755
end

protocol = node.etcd.client_listen_protocol

unless node.etcd.client_listen_addresses.empty?
  # add localhost back as it is overriden
  addresses = node.etcd.client_listen_addresses + [ '127.0.0.1' ]
  node.override.etcd.listen_client_urls = node.override.etcd.advertise_client_urls = build_client_urls(protocol,addresses)
else
  if node.etcd.client_listen_main_ip
    addresses = [ node.ipaddress.to_s, '127.0.0.1' ]
    node.override.etcd.listen_client_urls = node.override.etcd.advertise_client_urls = build_client_urls(protocol,addresses)
  end
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