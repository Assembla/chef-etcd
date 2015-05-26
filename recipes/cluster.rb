#
# Cookbook Name:: chef-etcd
# Recipe:: cluster
#
# Copyright 2015, Assembla Inc
#
# This recipe provides semi-automatic cluster setup
#
# All rights reserved - Do Not Redistribute
#

def build_cluster_string(proto,addr_hash)
  addr_hash.map{|name,addr| "#{name}=#{proto}://#{addr}:#{node.etcd.peers_port}"}.join(',')
end

def build_peer_listen_string(proto,addr_array)
  addr_array.map{|addr| "#{proto}://#{addr}:#{node.etcd.peers_port}"}.join(',')
end


protocol = node.etcd.peer_listen_protocol

unless node.etcd.nodes.empty?
  node.override.etcd.initial_cluster = build_cluster_string(protocol,node.etcd.nodes)
  node.override.etcd.initial_cluster_state = 'new'
else
  Chef::Log.info('ETCD MANUAL CLUSTER: No nodes specified.')
end

unless node.etcd.peer_listen_addresses.empty?
  urls = build_peer_listen_string(protocol, node.etcd.peer_listen_addresses)
  node.override.etcd.listen_peer_urls = node.override.etcd.initial_advertise_peer_urls = urls
else
  if node.etcd.peer_listen_main_ip
    ips = [ node.ipaddress.to_s ]
    node.override.etcd.listen_peer_urls = node.override.etcd.initial_advertise_peer_urls = build_peer_listen_string(protocol, ips)
  end
end
