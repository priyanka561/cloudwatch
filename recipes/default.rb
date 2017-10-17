# Cookbook:: cloudwatch
# Recipe:: default
# Copyright:: 2017, The Authors, All Rights Reserved.
case node['platform']
when 'amazon'
  include_recipe 'cloudwatch::linux'
when 'ubuntu'
  include_recipe 'cloudwatch::ubuntu'
end
