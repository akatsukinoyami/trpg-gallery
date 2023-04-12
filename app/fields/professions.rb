require "administrate/field/has_many"

class Professions < Administrate::Field::HasMany
  def collection
    data
  end
end
