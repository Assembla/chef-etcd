#
# Cookbook Name:: chef-etcd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user node[:etcd][:user]

group node[:etcd][:user] do
  members node[:etcd][:user]
end

include_recipe 'etcd::install'

include_recipe 'etcd::config'