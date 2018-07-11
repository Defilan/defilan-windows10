#
# Cookbook:: defilan-windows10
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

%w(
    slack 
    vscode
    autohotkeys
)
chocolatey_package 'package_name' do
  action :install
end

