class CreateLevels < ActiveRecord::Migration
  def change
  	create_table(:levels) do |t|
  	t.column(:level, :integer)
  end
 end
end