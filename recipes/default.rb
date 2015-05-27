#
# Cookbook Name:: chef-etcd
# Recipe:: default
#
# Copyright 2015, Assembla Inc
#
# All rights reserved - Do Not Redistribute
#

user node.etcd.user

group node.etcd.group do
  members node.etcd.user
end

directory node.etcd.data_dir do
  owner node.etcd.user
  group node.etcd.group
  mode '0755'
  action :create
end

directory node.etcd.log_dir do
  owner node.etcd.user
  group node.etcd.group
  mode '0755'
  action :create
end

include_recipe 'etcd::install'

include_recipe 'etcd::config'