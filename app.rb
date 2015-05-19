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

post('/first/question') do
  first_value = params.fetch("level_one")
  @@score = @@score + first_value
  if @@score == 0
    erb(:dead)
  else
    erb(:index)
  end
end

post('/bully') do
  @@score = @@score + first_value
  erb(:dead)
end

post('/sandwich') do
  @@score = @@score + first_value
  redirect('level_two')
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
