# Chef Client attributes
node.default['chef_client']['interval'] = 300
node.default['chef_client']['splay'] = 60

# Audit attributes
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server-automate'

case node['platform_family']
when 'windows'
  # default['audit']['profiles'] = [
  #   {
  #     name: 'DevSec Windows Patch Baseline',
  #     compliance: 'admin/windows-patch-baseline',
  #   },
  #   {
  #     name: 'DevSec Windows Security Baseline',
  #     compliance: 'admin/windows-baseline',
  #   },
  # ]
else
  default['audit']['profiles'] = [
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
