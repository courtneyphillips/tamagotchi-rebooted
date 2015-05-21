
ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
#set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
#set(:show_exceptions, false)
require("./app")
require("./sleeper")

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
  config.after(:each) do

    Tama.all().each() do |tama|
      tama.destroy()
    end

    Level.all.each() do |level|
      level.destroy()
    end

end
end
