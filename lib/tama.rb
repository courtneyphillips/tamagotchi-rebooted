class Tama < ActiveRecord::Base
  belongs_to :level
  before_create :set_initial_levels



  validates(:name, :presence => true)


  def birth_date
    "#{@birth_date.hour}:#{@birth_date.min}"
  end

  def start_update
    if self.food_level > 0 && self.activity_level > 0 && self.sleep_level > 0  && self.drink_level > 0
      self.update(food_level: (self.food_level-0))
      self.update(activity_level: (self.activity_level-0))
      self.update(sleep_level: (self.sleep_level-0))
      self.update(drink_level: (self.drink_level-0))
    else
      @@score = 0
    end

  end




  def age
    current_time = Time.new()
    age = current_time - @birth_date
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

def is_alive?
		food = food_level > 0
		sleep = sleep_level > 0
		activity = sctivity_level > 0
		food && sleep && activity
end
