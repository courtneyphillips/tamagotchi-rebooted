@@score = 0

get('/level/one') do
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

post('bully') do
  @@score = @@score + first_value
  erb(:dead)
end

post('sandwich') do
  @@score = @@score + first_value
  redirect('level_two')
end
