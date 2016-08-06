# r_package 'install R package' do
#   package 'javareconf'
#   action :install
# end

r_package 'install R package' do
  package 'rJava'
  action :install
end

r_package 'install R package from source' do
  package 'Rhipe_0.75.2_cdh5.tar.gz'
  url 'http://ml.stat.purdue.edu/rhipebin/Rhipe_0.75.2_cdh5.tar.gz'
  action :install_source
end
