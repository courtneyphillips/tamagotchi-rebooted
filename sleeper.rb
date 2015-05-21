require('bundler/setup')
Bundler.require(:default, :production)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

loop do
  Tama.start_update
  if Tama.all.last.food_level == 99
    Tama.hungry
  end
  sleep(15)
end
