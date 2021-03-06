#
# Cookbook Name:: chefknife
# Recipe:: default
#
# Copyright 2013, Gerald L. Hevener Jr., M.S.
#

# Install required Ruby gems system wide.
%w{ faraday faraday_middleware colorize artii }.each do |gempkg|
  gem_package gempkg do
    action :install
  end
end

# Deploy the chefknife Ruby script.
template "/usr/local/bin/chefknife" do
  source "chefknife.erb"
  mode 0755
  owner node['chefknife']['chefknife_binary_user']
  group node['chefknife']['chefknife_binary_group'] 
end

# Make sure /etc/chef dir exists.
directory "/etc/chef" do
  mode 0755
  owner node['chefknife']['chefknife_config_dir_user']
  group node['chefknife']['chefknife_config_dir_group']
  not_if "test -d /etc/chef"
end

chef_servers = 'test'

# Deploy chefknife config file.
template "/etc/chef/chefknife" do
  source "chefknife_config.erb" 
  mode 0644
  owner node['chefknife']['chefknife_config_user']
  group node['chefknife']['chefknife_config_group']
  variables(
    :knife_configs	=> node['chefknife']['knife_configs']
  )
end
