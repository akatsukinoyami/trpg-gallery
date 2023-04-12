class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    change_table :characters do |t|
      t.remove :race

      t.belongs_to :race
    end

    create_table :races do |t|
      t.string  :name
      t.text    :description

      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.timestamps
    end
  end
end
