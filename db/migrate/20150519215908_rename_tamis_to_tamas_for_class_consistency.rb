class RenameTamisToTamasForClassConsistency < ActiveRecord::Migration
  def change

    rename_table(:tamis, :tamas)

  end
end
