# Chef Client attributes
default['chef_client']['interval'] = 300
default['chef_client']['splay'] = 120

# Audit attributes
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server-automate'

default['audit']['profiles'] = case node['platform_family']
                               when 'windows'
                                 [
                                   {
                                     name: 'DevSec Windows Patch Baseline',
                                     compliance: 'admin/windows-patch-baseline',
                                   },
                                   {
                                     name: 'DevSec Windows Security Baseline',
                                     compliance: 'admin/windows-baseline',
                                   },
                                 ]
                               else
                                 [
                                   {
                                     name: 'DevSec Linux Patch Benchmark',
                                     compliance: 'admin/linux-patch-baseline',
                                   },
                                   {
                                     name: 'DevSec Linux Security Baseline',
                                     compliance: 'admin/linux-baseline',
                                   },
                                 ]
                               end
