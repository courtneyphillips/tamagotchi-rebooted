

class Tama < ActiveRecord::Base
  belongs_to :level

	before_create :set_initial_levels


def time_passes days
		self.food_level = self.food_level - (1 * days)
		self.activity_level = self.activity_level - (1 * days)
		self.sleep_level = self.sleep_level - (1 * days)
		self.save
end

def is_alive?
		food = food_level > 0
		sleep = sleep_level > 0
		activity = sctivity_level > 0
		food && sleep && activity
end
	
def feed amount
	  if (self.food_level + amount) > 115
	  	self.food_level = 100
	  else
	  	self.food_level + amount > 115
	  	self.food_level = self.food_level + amount
	  end
	  self.save
end	

def sleep amount
	if (self.sleep_level + amount) > 115
		self.sleep_level = 100
	else
		self.sleep_level = self.sleep_level + amount
	end
	   self.save
end	

def play amount
	if (self.activity_level + amount) > 100
		self.activity_level = 100 
	else
		self.activity_level = self.activity_level + amount
	end
		self.save
end			

private 
	def set_initial_levels
	self.food_level = 100
	self.activity_level = 100
	self.sleep_level = 100
 	end
 end




