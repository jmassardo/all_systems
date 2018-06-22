name 'all_systems'
maintainer 'James Massardo'
maintainer_email 'james@dxrf.com'
license 'All Rights Reserved'
description 'Installs/Configures all_systems'
long_description 'Installs/Configures all_systems'
version '0.1.6'
chef_version '>= 12.14' if respond_to?(:chef_version)
supports 'ubuntu'
depends 'chef-client'
depends 'audit'
depends 'cis_baseline'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/jmassardo/all_systems/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/jmassardo/all_systems'
