require "administrate/base_dashboard"

class CharacterDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    age: Field::Number,
    attitude_gods: Field::Text,
    attitude_magic: Field::Text,
    attitude_races: Field::Text,
    attitude_tech: Field::Text,
    bloodiness: Field::Number,
    charisma: Field::Number,
    constitution: Field::Number,
    dexterity: Field::Number,
    intelligence: Field::Number,
    items: Field::HasMany,
    lewdness: Field::Number,
    max_health: Field::Number,
    max_mana: Field::Number,
    name: Field::String,
    problem_solving_method: Field::Text,
    race: Field::String,
    relatives: Field::HasMany,
    skills: Field::HasMany,
    strength: Field::Number,
    wisdom: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    user: Field::BelongsTo.with_options(
      searchable: true,
      searchable_fields: ['username'],
    ),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    name
    age
    race
    max_health
    max_mana
    user
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    user
    name
    age
    race
    lewdness
    bloodiness
    max_health
    max_mana
    attitude_gods
    attitude_magic
    attitude_races
    attitude_tech
    problem_solving_method
    strength
    constitution
    dexterity
    intelligence
    wisdom
    charisma
    skills
    items
    relatives

    id
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    user
    name
    age
    race
    lewdness
    bloodiness
    max_health
    max_mana
    attitude_gods
    attitude_magic
    attitude_races
    attitude_tech
    problem_solving_method
    strength
    constitution
    dexterity
    intelligence
    wisdom
    charisma
    skills
    items
    relatives
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how characters are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource character
    character.name
  end
end
