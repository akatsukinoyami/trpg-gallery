class Item < ApplicationRecord
  belongs_to :character

  enum kind: { money: 0, item: 1, weapon: 2, artifact: 3 }
end
