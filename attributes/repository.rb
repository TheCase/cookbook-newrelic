#
# Cookbook Name:: newrelic
# Attributes:: repository
#
# Copyright 2012-2015, Escape Studios
#

default['newrelic']['repository']['key'] = "#{node['newrelic']['repository']['base']}/548C16BF.gpg"

case node['platform_family']
when 'debian'
  default['newrelic']['repository']['uri'] = "#{node['newrelic']['repository']['base']}/debian/"
  default['newrelic']['repository']['distribution'] = 'newrelic'
  default['newrelic']['repository']['components'] = ['non-free']
when 'rhel', 'fedora'
  default['newrelic']['repository']['uri'] = "#{node['newrelic']['repository']['base']}/pub/newrelic/el5/$basearch/"
end
