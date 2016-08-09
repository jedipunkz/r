# action to install from source
action :install do
  execute "install R package from source" do
    command r_install_from_source(new_resource.url, new_resource.package)
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

def r_install_from_source(url, package_name)
  r_command = "install.packages('#{package_name}', repos=NULL, type='source')"
  "wget \"#{url}\" -O \"/tmp/#{package_name}\"; cd /tmp; echo \"#{r_command}\" | R --no-save --no-restore -q"
end

def r_remove(package_name)
  r_command = "remove.packages('#{package_name}')"
  "echo \"#{r_command}\" | R --no-save --no-restore -q"
end
