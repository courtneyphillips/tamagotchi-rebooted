class Level < ActiveRecord::Base
  belongs_to :tamas

  @@score = @tama.score

  def level_up
    if @@score >= 100
      tama.update(level: 1)

  end


end
