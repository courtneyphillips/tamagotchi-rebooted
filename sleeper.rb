require('bundler/setup')
Bundler.require(:default, :production)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

loop do
  Tama.start_update
  if Tama.all.any?
    if Tama.all.last.food_level == 99
      puts("Tama is hungry")
    end
  end
  sleep(15)
end
