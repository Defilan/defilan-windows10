#
# Cookbook:: defilan_windows10
# Recipe:: default
#
# Copyright:: 2018, Christopher Maher, MIT

# Install Choco
include_recipe 'chocolatey::default'

# Install Chocolatey Packages
%w(
  chefdk
  git
  vscode
  evernote
  conemu
  googlechrome
  microsoft-teams
  slack
  zoom
).each do |package|
  chocolatey_package package
end
