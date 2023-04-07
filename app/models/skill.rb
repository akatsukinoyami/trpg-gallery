class Skill < ApplicationRecord
  belongs_to :character

  enum kind: { race: 0, physical: 1, magical: 2 }
end
