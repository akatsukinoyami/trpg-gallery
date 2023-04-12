class Character < ApplicationRecord
  belongs_to :user
  belongs_to :race

  has_many :professions

  has_many :items
  has_many :skills
  has_many :relatives
  has_many :properties

  mount_uploader :avatar, AvatarUploader
end
