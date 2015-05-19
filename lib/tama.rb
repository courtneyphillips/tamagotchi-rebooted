class Tama < ActiveRecord::Base
  has_one :level


  validates(:name, :presence => true)


  def birth_date
    "#{@birth_date.hour}:#{@birth_date.min}"
  end

  def update_pet
    current_time = Time.new()
    time_elapsed = current_time - @last_update
    @last_update = current_time
  end


  def age
    current_time = Time.new()
    age = current_time - @birth_date
  end


  private
    def set_initial_levels
      self.food_level = 11
      self.activity_level = 11
      self.sleep_level = 11
      @birth_date = Time.new()
      @last_update = @birth_date
    end
  end
>>>>>>> 009f0594a7370666cbd8e4377ed0d98f3b208620
