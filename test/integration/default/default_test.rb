# # encoding: utf-8

# Inspec test for recipe defilan_windows10::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

%w(
  chefdk
  git
  vscode
  evernote
  ConEmu
  GoogleChrome
  microsoft-teams
  slack
  zoom
  habitat
  vagrant
  virtualbox 
  docker-for-windows
  SkypeForBusiness
  resharper
  autohotkey
  7zip
).each do |package|
  describe chocolatey_package(package) do
    it { should be_installed }
  end 
end 
