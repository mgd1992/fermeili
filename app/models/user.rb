class User < ApplicationRecord
  has_many :user_ferments
  has_many :ferment_recipes, through: :ferment_recipes
  has_secure_password
  has_one_attached :photo
end
