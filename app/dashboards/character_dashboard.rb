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
    name: Field::String,
    age: Field::Number,
    max_health: Field::Number,
    max_mana: Field::Number,

    strength: Field::Number,
    constitution: Field::Number,
    dexterity: Field::Number,
    intelligence: Field::Number,
    wisdom: Field::Number,
    charisma: Field::Number,

    biography: Field::Text,
    appearance: Field::Text,
    views: Field::Text,

    professions: Field::HasMany,
    relatives: Field::HasMany,
    items: Field::HasMany,
    properties: Field::HasMany,
    skills: Field::HasMany,

    created_at: Field::DateTime,
    updated_at: Field::DateTime,

    race: Field::BelongsTo.with_options(
      searchable: true,
      searchable_fields: ['name'],
    ),
    user: Field::BelongsTo.with_options(
      searchable: true,
      searchable_fields: ['username'],
    ),
    avatar: Field::Carrierwave.with_options(
      image: :m,
      multiple: false,
      remove: false,
      remote_url: false
    )
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    avatar
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
    max_health
    max_mana

    biography
    appearance
    views

    strength
    constitution
    dexterity
    intelligence
    wisdom
    charisma

    professions
    skills
    items
    properties
    relatives

    id
    created_at
    updated_at
    avatar
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    user
    name
    age
    race
    max_health
    max_mana

    strength
    constitution
    dexterity
    intelligence
    wisdom
    charisma

    biography
    appearance
    views

    professions
    skills
    items
    properties
    relatives

    avatar
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
