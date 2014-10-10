#
# Cookbook Name:: amiga-ppp
# Recipe:: default
#
# Copyright 2014, Roger North-Row
#
# All rights reserved - Do Not Redistribute
#
package 'ppp' do
  package_name 'ppp'
end

template "/etc/ppp/peers/amiga" do
  source "amiga.erb"
  owner "root"
  group "root"
  mode 0600
  variables(
    :serial_device => node[:serial_device],
    :serial_speed  => node[:serial_speed],
    :net_interface => node[:net_interface],
    :ip_addresses  => node[:ip_addresses],
    :ms_dns        => node[:ms_dns],
    :ms_wins       => node[:ms_wins],
    :netmask       => node[:netmask]
  )
end

# Firewall
include_recipe "iptables::default"
iptables_rule  "iptables.nat"

# Forwarding
node.default['sysctl']['params']['net']['ipv4']['ip_forward'] = 1
include_recipe 'sysctl::apply'
