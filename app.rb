require('bundler/setup')
Bundler.require(:default, :production)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
@@score = 1

get('/') do
  erb(:index)
end

get('/level/:id/:level_id') do
  @tama = Tama.find(params.fetch("id").to_i)
  if @tama.food_level > 0 && @tama.activity_level > 0 && @tama.sleep_level > 0  && @tama.drink_level > 0
    @tama.start_update
    erb(:level_one)
  else
    @score = 0
    erb(:dead)
  end
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
    redirect('/level/'.concat(new_tama.id.to_s).concat("/").concat(new_tama.level_id.to_s))
  end
end

patch('/feed/:id/:level_id') do
  tama = Tama.find(params.fetch("id").to_i)
  tama.update(food_level: 100)
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(tama.level_id.to_s))
end

patch('/sleep/:id/:level_id') do
  tama = Tama.find(params.fetch("id").to_i)
  tama.update(sleep_level: 100)
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(tama.level_id.to_s))
end

patch('/drink/:id/:level_id') do
  tama = Tama.find(params.fetch("id").to_i)
  tama.update(drink_level: 100)
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(tama.level_id.to_s))
end

patch('/activity/:id/:level_id') do
  tama = Tama.find(params.fetch("id").to_i)
  tama.update(activity_level: 100)
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(tama.level_id.to_s))
end
