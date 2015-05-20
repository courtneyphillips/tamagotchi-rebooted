class AddStatusColumnsToTamaTable < ActiveRecord::Migration
  def change
    add_column :tamas, :drink_level, :integer
  end
end
