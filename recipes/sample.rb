r_package 'install javareconf package from repo' do
  package 'javareconf'
  action :install
end

r_package 'install rJava package from repo' do
  package 'rJava'
  action :install
end

r_source 'install Rhipe package from source' do
  package 'Rhipe'
  url 'http://ml.stat.purdue.edu/rhipebin/Rhipe_0.75.2_cdh5.tar.gz'
  action :install
end
