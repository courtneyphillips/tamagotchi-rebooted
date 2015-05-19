<<<<<<< HEAD
ENV['RACK_ENV'] = test

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require("./app")

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do

    Tama.all().each() do |tama|
      tama.destroy()
    end

    # OTHERCLASS.all.each() do |OTHERCLASS|
    #   OTHERCLASS.destroy()
    # end

end
end
