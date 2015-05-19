class CreateTamis < ActiveRecord::Migration
  def change
  create_table(:tamis) do |t|
   t.column(:name, :integer)
   t.column(:food, :integer)
   t.column(:play, :integer)
   t.column(:sleep, :integer)
   t.column(:level_id, :integer)
	end
  end
end
