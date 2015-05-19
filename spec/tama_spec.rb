require('spec_helper')


describe(Tama) do
	describe('#initialize') do
		it "creates a new tama with name and levels" do
			new_tama = Tama.create(name: "Pat")
			expect(new_tama.name).to(eq('Pat'))
			expect(new_tama.food_level).to(eq(10))
			expect(new_tama.sleep_level).to(eq(10))
			expect(new_tama.activity_level).to(eq(10))
		end
	end

	describe('#time_passes') do
		it 'decreases the amount of food the tama has left by 1' do
			my_tama =Tama.create(name: 'Pat')
			my_tama.time_passes(1)
			expect(my_tama.food_level).to(eq(9))
		end
	end
end
