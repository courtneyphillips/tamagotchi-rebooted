class Tama < ActiveRecord::Base
  belongs_to :level
  before_create :set_initial_levels



  validates(:name, :presence => true)


  def birth_date
    "#{@birth_date.hour}:#{@birth_date.min}"
  end

  def self.start_update
    all_tamas = Tama.all
    all_tamas.each do |tama|
      tama.update(food_level: (tama.food_level-1))
      tama.update(activity_level: (tama.activity_level-1))
      tama.update(sleep_level: (tama.sleep_level-1))
      tama.update(drink_level: (tama.drink_level-1))
    end
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
