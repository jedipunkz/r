actions :install
default_action :install
attribute :package, :required => true, :kind_of => String
attribute :repos, :default => 'https://cran.ism.ac.jp/', :kind_of => String
attribute :url, :required => true, :kind_of => String
