
source :rubygems
#If this is a gem 
#Normal gems go in modular_sinatra_apps.gemspec
#gemspec
#gem "heroku", "~>2"
gem "sinatra",           "~>1", :require => 'sinatra/base' 
gem "sinatra-synchrony",        :require => 'sinatra/synchrony',:git => 'git://github.com/kyledrake/sinatra-synchrony.git'
gem "activerecord",      "~>3", :require => 'active_record'

#development and test not install on heroku deployment
group :development do
  gem "sqlite3-ruby", "~>1"
  gem "thin",         "~>1"
end

#group :test do
#  gem "rspec", :require => "spec"
#end
