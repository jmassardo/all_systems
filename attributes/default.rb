# Chef Client attributes
node.default['chef_client']['interval'] = 300
node.default['chef_client']['splay'] = 60

# Audit attributes
node.default['audit']['reporter'] = 'chef-server-automate'
node.default['audit']['fetcher'] = 'chef-server-automate'
# node.default['audit']['attributes']['environment'] = node.chef_environment
node.default['audit']['profiles'] = case node['platform_family']
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
