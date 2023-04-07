class Property < ApplicationRecord
  belongs_to :character

  enum kind: { transport: 0, real_estate: 1, moveable: 2 }
end
