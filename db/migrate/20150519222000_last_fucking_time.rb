class LastFuckingTime < ActiveRecord::Migration
  def change

    create_table :tamas do |t|
      t.column :name, :string
      t.column :food_level, :int
      t.column :activity_level, :int
      t.column :sleep_level, :int
      t.column :level_id, :int

      t.timestamps null: false
    end
  end
end
