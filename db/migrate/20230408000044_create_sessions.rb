class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :description
      t.belongs_to :user
    end
  end
end
