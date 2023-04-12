class CreateProfessions < ActiveRecord::Migration[6.0]
  def change
    create_table :professions do |t|
      t.string :title
      t.text :description
      t.integer :level

      t.belongs_to :character
    end
  end
end
