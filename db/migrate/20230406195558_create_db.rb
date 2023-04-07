class CreateDb < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.integer :age
      t.integer :max_health
      t.integer :max_mana

      t.text :attitude_gods
      t.text :attitude_magic
      t.text :attitude_tech
      t.text :attitude_races

      t.text :problem_solving_method
      t.integer :lewdness
      t.integer :bloodiness

      t.integer :strength
      t.integer :constitution
      t.integer :dexterity
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma

      t.belongs_to :user

      t.timestamps
    end
  end
end
