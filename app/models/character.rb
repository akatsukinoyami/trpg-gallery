class Character < ApplicationRecord
  belongs_to :user

  has_many :items
  has_many :skills
  has_many :relatives

  mount_uploader :avatar, AvatarUploader
end
