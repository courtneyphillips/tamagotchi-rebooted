
class Tama < ActiveRecord::Base
  has_one :level
	before_create :set_initial_levels
  validates(:name, :presence => true)


	def time_passes days
		self.food_level = self.food_level - (1 * days)
		self.activity_level = self.activity_level - (1 * days)
		self.sleep_level = self.sleep_level - (1 * days)
		self.save
	end
end
