#
# Cookbook:: all_systems
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'chef-client::default'
include_recipe 'audit::default'
include_recipe 'cis-baseline::default'

# chef_client_updater 'Install 15.8.23' do
#   version '15.8.23'
#   post_install_action 'exec'
# end
