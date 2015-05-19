require('bundler/setup')
Bundler.require(:default, :production)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

@@score = 0

get('/') do
  erb(:index)
end

get('/level/:id') do
  @tama = Tama.find(params.fetch("id").to_i)
  erb(:level_one)
end

post('/question_one') do
  @tama = params.fetch(tama_id).to_i
  first_value = params.fetch("level_one").to_i
  @@score = @@score + first_value
  if @@score == 0
    erb(:dead)
  else
    redirect('/level/.concat()')
  end
end

get('/create_tama') do
  erb(:tama_form)
end

post('/tama/new') do
  new_tama = Tama.new(name: params.fetch("name"))
  if new_tama.save
    redirect('/level/'.concat(new_tama.id.to_s))
  end
end

get('/tama/new') do
  erb(:level_1)
end
