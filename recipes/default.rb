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
  habitat
  vagrant
  virtualbox 
  docker-for-windows
  skypeforbusiness
  autohotkey
  resharper
  7zip
  poshgit
).each do |package|
  chocolatey_package package do
    action :install
    returns [0, 3010]
  end
end
