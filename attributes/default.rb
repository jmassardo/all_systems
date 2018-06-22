# Chef Client attributes
node.default['chef_client']['interval'] = 300
node.default['chef_client']['splay'] = 60

# Audit attributes
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server-automate'
default['audit']['profiles'] = [
  {
    name: 'DevSec Linux Patch Benchmark',
    compliance: 'lab_admin/linux-patch-baseline',
  },
]
