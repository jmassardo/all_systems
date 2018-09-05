#
# Cookbook:: all_systems
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'chef-client::default'
case node['platform_family']
when 'windows'
  # Do nothing...
else
  include_recipe 'audit::default'
end
include_recipe 'cis_baseline::default'
