#
# Cookbook Name:: chefknife
# Recipe:: default
#
# Copyright 2013, Gerald L. Hevener Jr., M.S.
#

# Deploy the chefknife Ruby script.
template "/usr/local/bin/chefknife" do
  source "chefknife.erb"
  mode 0755
  owner {default['chefknife']['chefknife_binary_user']
  group default['chefknife']['chefknife_binary_group'] 
end

# Make sure /etc/chef dir exists.
directory "/etc/chef" do
  mode 0755
  owner default['chefknife']['chefknife_config_dir_user']
  group default['chefknife']['chefknife_config_dir_group']
  not_if "test -d /etc/chef"
end

chef_servers = 'test'

# Deploy chefknife config file.
template "/etc/chef/chefknife" do
  source "chefknife_config.erb" 
  mode 0644
  owner default['chefknife']['chefknife_config_user']
  group default['chefknife']['chefknife_config_group']
  variables(
    :chef_servers	=> node['chefknife']['chef_servers'],
    :knife_configs	=> node['chefknife']['knife_configs']
  )
end
