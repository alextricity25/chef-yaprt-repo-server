#
# Cookbook Name:: yaprt-repo-server
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'yaprt-repo-server::pre-tasks'
include_recipe 'yaprt-repo-server::install-yaprt'
include_recipe 'yaprt-repo-server::setup-nginx-vhost'
include_recipe 'yaprt-repo-server::build-repo-server'
