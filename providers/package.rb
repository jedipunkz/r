# action to install from repository
action :install do
  execute "install R package" do
    command r_install(new_resource.package)
    not_if r_is_installed(new_resource.package)
  end
end

action :remove do
  execute "remove R package" do
    command r_remove(new_resource.package)
    not_if r_is_removed(new_resource.package)
  end
end

# local methods
def r_is_installed(package_name)
  "test -e /usr/local/lib/R/site-library/\"#{package_name}\""
end

def r_is_removed(package_name)
  "test ! -e /usr/local/lib/R/site-library/\"#{package_name}\""
end

def r_install(package_name)
  repos = "#{new_resource.repos}"
  r_command = "install.packages('#{package_name}', repos='#{repos}')"
  "echo \"#{r_command}\" | R --no-save --no-restore -q"
end

def r_remove(package_name)
  r_command = "remove.packages('#{package_name}')"
  "echo \"#{r_command}\" | R --no-save --no-restore -q"
end
