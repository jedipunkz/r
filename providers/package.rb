# action to install from repository
action :install do
  execute "install R package" do
    command r_install(new_resource.package)
    not_if r_is_installed(new_resource.package)
  end
end

# local methods
def r_is_installed(package_name)
  "ls /usr/local/lib/R/site-library/\"#{package_name}\""
end

def r_install(package_name)
  repos = "#{new_resource.repos}"
  r_command = "install.packages('#{package_name}', repos='#{repos}')"
  "echo \"#{r_command}\" | R --no-save --no-restore -q"
end
