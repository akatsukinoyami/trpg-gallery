class AddLangToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :lang, :integer, default: 0
  end
end
