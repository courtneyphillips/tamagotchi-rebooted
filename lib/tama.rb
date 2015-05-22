class Tama < ActiveRecord::Base
  belongs_to :level
  before_create :set_initial_levels



  validates(:name, :presence => true)


  def birth_date
    "#{@birth_date.hour}:#{@birth_date.min}"
  end

  def start_update
      self.update(food_level: (self.food_level-7))
      self.update(activity_level: (self.activity_level-8))
      self.update(sleep_level: (self.sleep_level-10))
      self.update(drink_level: (self.drink_level-15))
  end



  def set_initial_levels
    self.food_level = 100
    self.activity_level = 100
    self.sleep_level = 100
    self.drink_level = 100
    @birth_date = Time.new()
    @last_update = @birth_date
    self.level_id = 1
    @@score = 1
  end
end

  def age
    current_time = Time.new()
    age = current_time - @birth_date
  end



def is_alive?
		food = food_level > 0
		sleep = sleep_level > 0
		activity = sctivity_level > 0
		food && sleep && activity
end
