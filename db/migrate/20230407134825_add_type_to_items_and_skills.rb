class AddTypeToItemsAndSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :kind, :integer, default: 0
    add_column :skills, :kind, :integer, default: 0
  end
end
