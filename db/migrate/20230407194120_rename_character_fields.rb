class RenameCharacterFields < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :attitude_gods, :biography
    rename_column :characters, :attitude_magic, :appearance
    rename_column :characters, :attitude_races, :views
    remove_column :characters, :attitude_tech
    remove_column :characters, :problem_solving_method
    remove_column :characters, :lewdness
    remove_column :characters, :bloodiness
  end
end
