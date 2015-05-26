#
# Cookbook Name:: chef-etcd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'etcd::install'

include_recipe 'etcd::config'