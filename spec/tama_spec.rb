require('spec_helper')

describe(Tama) do
	describe('#initialize') do
		it "creates a new tama with name and levels" do
			new_tama = Tama.create(name: "Pat")
			expect(new_tama.name).to(eq("Pat"))
			expect(new_tama.food_level).to(eq(100))
			expect(new_tama.sleep_level).to(eq(100))
			expect(new_tama.activity_level).to(eq(100))
			expect(new_tama.drink_level).to(eq(100))
		end
	end



	describe('#start_update') do
		it 'decreases the amount of food, drink, activity, sleep the tama has left by 1' do
			my_tama =Tama.create(name: 'Pat')
			my_tama.start_update()
			expect(my_tama.food_level).to(eq(99))
			expect(my_tama.activity_level).to(eq(93))
			expect(my_tama.drink_level).to(eq(90))
			expect(my_tama.sleep_level).to(eq(97))
		end
	end
end
#
# 	describe('#is_alive?') do
# 		it 'is alive if the food level, sleep level,  is above 0, ' do
# 			my_tama = Tama.create(:name => 'Chris')
# 			expect(my_tama.is_alive?).to(eq(true))
# 		end
# 	end
#
# 	it 'is dead if the food level is 0' do
# 		my_tama = Tama.create(:name => 'Steve')
# 		my_tama.time_passes(100)
# 		expect(my_tama.is_alive?).to(eq(false))
# 		end
#
# 	 describe('#feed') do
# 	 	it 'increases the tama food level' do
# 	 		my_tama = Tama.create(:name => "Billy")
# 	 		my_tama.feed
# 	 		expect(my_tama.food_level).to(eq(115))
# 	 	end
# 	 end
#
# 	 describe('#level') do
# 	 	it 'returns level' do
# 			level = Level.create(level: 1)
# 			tama = Tama.create(level_id: level.id )
# 			expect(tama.level).to(eq(level))
# 		end
# 	end
# end
