
require 'bundler/setup'
Bundler.require(:default)

module SinatraApp1
  VERSION = '0.0.1'

  class App < Sinatra::Base
    use Rack::MethodOverride
    set :public_folder, "public"

    #Configure Modules ran when starting/restarting Server
    configure :development do
      puts "Development"
      set :analytics_ena, false
    end

    configure :test do
      puts "Test"
    end

    configure :production do
      set :analytics_ena, true
    end


    #Ran on Server Error
    error do
      e = request.env['sinatra.error']
      puts e.to_s
      puts e.backtrace.join("\n")
      "Application error"
    end

    get '/' do
      'Application1'.ljust(30)
    end

    ## start the server if ruby file executed directly
    run! if app_file == $0
  end
end

