class User < ApplicationRecord
  has_many :user_ferments
  has_many :ferment_recipes
end
