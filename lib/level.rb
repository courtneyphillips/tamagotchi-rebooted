class Level < ActiveRecord::Base
  belongs_to :tamis

  def level_up

    if @@score >= 100
      tami.update(level_id: 1)
    end

    if @@score >= 200
      tami.update(level_id: 2)
    end

    if @@score >= 300
      tami.update(level_id: 3)
    end


  end


end
