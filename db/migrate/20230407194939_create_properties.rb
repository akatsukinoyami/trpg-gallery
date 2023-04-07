class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :description
      t.integer :cost

      t.belongs_to :character
    end
  end
end
