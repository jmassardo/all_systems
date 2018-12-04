# Chef Client attributes
node.default['chef_client']['interval'] = 300
node.default['chef_client']['splay'] = 60

# Audit attributes
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server-automate'

case node['platform_family']
when 'windows'
  default['audit']['profiles']['DevSec Windows Patch Baseline'] = { 'compliance': 'admin/windows-patch-baseline' }
  default['audit']['profiles']['DevSec Windows Security Baseline'] = { 'compliance': 'admin/windows-baseline' }

else
  default['audit']['profiles']['DevSec Linux Patch Benchmark'] = { 'compliance': 'admin/linux-patch-baseline' }
  default['audit']['profiles']['DevSec Linux Security Baseline'] = { 'compliance': 'admin/linux-baseline' }
end
