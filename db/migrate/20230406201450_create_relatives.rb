class CreateRelatives < ActiveRecord::Migration[6.0]
  def change
    create_table :relatives do |t|
      t.string :name
      t.string :description

      t.belongs_to :character
    end
  end
end
