# action to install from source
action :install do
  execute "install R package from source" do
    command r_install_from_source(new_resource.url, new_resource.package)
    not_if r_is_installed(new_resource.package)
  end
end

# local methods
def r_is_installed(package_name)
  "ls /usr/local/lib/R/site-library/\"#{package_name}\""
end

def r_install_from_source(url, package_name)
  r_command = "install.packages('#{package_name}', repos=NULL, type='source')"
  "wget \"#{url}\" -O \"/tmp/#{package_name}\"; cd /tmp; echo \"#{r_command}\" | R --no-save --no-restore -q"
end
