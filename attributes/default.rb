# Chef Client attributes
default['chef_client']['interval'] = 300
default['chef_client']['splay'] = 30
default['chef_client']['chef_license'] = 'accept'
default['chef_client']['task']['frequency_modifier'] = 10

# Audit attributes
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server-automate'

if platform_family?('windows')
  default['audit']['profiles']['DevSec Windows Patch Baseline'] = { compliance: 'admin/windows-patch-baseline' }
  default['audit']['profiles']['DevSec Windows Security Baseline'] = { compliance: 'admin/windows-baseline' }
else
  default['audit']['profiles']['DevSec Linux Patch Benchmark'] = { compliance: 'admin/linux-patch-baseline' }
  default['audit']['profiles']['DevSec Linux Security Baseline'] = { compliance: 'admin/linux-baseline' }
end
