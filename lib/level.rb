class Level < ActiveRecord::Base
  belongs_to :tamis

<<<<<<< HEAD
=======

>>>>>>> 18899b9bd71fb5eca36f248dad9b617d3d011671
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
