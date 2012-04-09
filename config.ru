require 'bundler/setup'
Bundler.require(:default)

require File.dirname(__FILE__) + "/lib/app1.rb"
require File.dirname(__FILE__) + "/lib/app1_synchrony.rb"


map "/app1" do
	run SinatraApp1::App
end

map "/app1synchrony" do
	run SinatraApp1Synchrony::App
end
