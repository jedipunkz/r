actions :install, :remove
default_action :install
attribute :package, :required => true, :kind_of => String
attribute :repos, :default => 'https://cran.ism.ac.jp/', :kind_of => String
