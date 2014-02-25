#
# Cookbook Name:: gbs
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#








#include_recipe "wordpress-nginx"




#include_recipe "apache2"
include_recipe "nginx"
#include_recipe "mysql::client"
#include_recipe "mysql::server"
#include_recipe "php"
#include_recipe "php::module_mysql"
#include_recipe "apache2::mod_php5"

#apache_site "default" do
#  enable true
#end

wordpress_nginx_site 'gracebiblestudies.com' do
  host 'gracebiblestudies.com'
  root '/srv/www/gracebiblestudies.com'
end