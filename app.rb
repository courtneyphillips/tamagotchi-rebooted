require('bundler/setup')
Bundler.require(:default, :production)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


get('/') do
  @@score = 1
  erb(:index)
end

get('/dead') do
  erb(:dead)
end

get('/level/:id/1') do
  @@score
  @tama = Tama.find(params.fetch("id").to_i)
  @tama.start_update
  if @tama.food_level > 0 && @tama.activity_level > 0 && @tama.sleep_level > 0  && @tama.drink_level > 0
    @tama = Tama.find(params.fetch("id").to_i)
    erb(:level_one)
  else
    @@score = 0
    erb(:dead)
  end
end

post('/question_one') do
  @tama = Tama.find(params.fetch("tama_id").to_i)
  first_value = params.fetch("level_one").to_i
  @@score = @@score + first_value
  if @@score == 0
    redirect('/dead')
  else
    @tama.update(level_id: 2)
    redirect('level/up/'.concat(@tama.id.to_s).concat("/2"))
  end
end

get('/level/up/:id/:level_id') do
  @id = params.fetch("id").to_i
  @level_id = params.fetch("level_id")
  erb(:level_up)
end

get('/level/:id/2') do
  @tama = Tama.find(params.fetch("id").to_i)
  if @tama.food_level > 0 && @tama.activity_level > 0 && @tama.sleep_level > 0  && @tama.drink_level > 0
    @tama.start_update
    erb(:level_two)
  else
    @@score = 0
    erb(:dead)
  end
end

post('/question_two') do
  @tama = Tama.find(params.fetch("tama_id").to_i)
  second_value = params.fetch("level_two").to_i
  @@score = @@score + second_value
  if @@score == 0
    redirect('/dead')
  elsif @@score == 201
    # juggalo
    @tama.update(level_id: 3)
    redirect('/level/'.concat(@tama.id.to_s).concat("/3a"))
  else
    # meth cooker
    @tama.update(level_id: 3)
    redirect('level/up/'.concat(@tama.id.to_s).concat("/3b"))
  end
end

get('/level/:id/3a') do
  @tama = Tama.find(params.fetch("id").to_i)
  if @tama.food_level > 0 && @tama.activity_level > 0 && @tama.sleep_level > 0  && @tama.drink_level > 0
    @tama.start_update
    erb(:level_three_a)
  else
    @@score = 0
    erb(:dead)
  end
end

get('/level/:id/3b') do
  @tama = Tama.find(params.fetch("id").to_i)
  if @tama.food_level > 0 && @tama.activity_level > 0 && @tama.sleep_level > 0  && @tama.drink_level > 0
    @tama.start_update
    erb(:level_three_b)
  else
    @@score = 0
    erb(:dead)
  end
end

post('/question_three') do
  @tama = Tama.find(params.fetch("tama_id").to_i)
  third_value = params.fetch("level_three").to_i
  @@score = @@score + third_value
  if @@score == 0
    redirect('/dead')
  elsif @@score == 201
    # train
    @tama.update(level_id: 3)
    redirect('/level/'.concat(@tama.id.to_s).concat("/4a"))
  else
    # hitchhiker
    @tama.update(level_id: 3)
    redirect('/level/'.concat(@tama.id.to_s).concat("/4b"))
  end
end

get('/level/:id/4a') do
  @tama = Tama.find(params.fetch("id").to_i)
  if @tama.food_level > 0 && @tama.activity_level > 0 && @tama.sleep_level > 0  && @tama.drink_level > 0
    @tama.start_update
    erb(:level_four_a)
  else
    @@score = 0
    erb(:dead)
  end
end

get('/level/:id/4b') do
  @tama = Tama.find(params.fetch("id").to_i)
  if @tama.food_level > 0 && @tama.activity_level > 0 && @tama.sleep_level > 0  && @tama.drink_level > 0
    @tama.start_update
    erb(:level_four_b)
  else
    @@score = 0
    erb(:dead)
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
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(params.fetch("level_id")))
end

patch('/sleep/:id/:level_id') do
  tama = Tama.find(params.fetch("id").to_i)
  tama.update(sleep_level: 100)
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(params.fetch("level_id")))
end

patch('/drink/:id/:level_id') do
  tama = Tama.find(params.fetch("id").to_i)
  tama.update(drink_level: 100)
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(params.fetch("level_id")))
end

patch('/activity/:id/:level_id') do
  tama = Tama.find(params.fetch("id").to_i)
  tama.update(activity_level: 100)
  redirect('/level/'.concat(tama.id.to_s).concat("/").concat(params.fetch("level_id")))
end
