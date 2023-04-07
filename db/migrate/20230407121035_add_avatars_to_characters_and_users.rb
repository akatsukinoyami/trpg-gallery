class AddAvatarsToCharactersAndUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :avatar, :string
    add_column :users, :avatar, :string
  end
end
