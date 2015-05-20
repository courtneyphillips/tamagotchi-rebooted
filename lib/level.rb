class Level < ActiveRecord::Base

  has_one :tama



  def level_up

    if @@score >= 100
      tama.update(level_id: 1)
    end

    if @@score >= 200
      tama.update(level_id: 2)
    end

    if @@score >= 300
      tama.update(level_id: 3)
    end

  end

end
