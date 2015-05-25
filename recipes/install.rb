#
# Cookbook Name:: chef-etcd
# Recipe:: install
#
# Copyright 2015, Assembla Inc
#
# All rights reserved - Do Not Redistribute
#

# ark needs tar
package 'tar'

version = node.etcd.version
package_name = "etcd-v#{version}-#{node[:os]}-amd64.tar.gz"

ark 'etcd' do
  has_binaries ['etcd', 'etcdctl']
  version node[:etcd][:version]
  url "https://github.com/coreos/etcd/releases/download/v#{version}/#{package_name}"
  checksum node[:etcd][:sha256]
  action :install
end
