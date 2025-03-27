class FermentRecipe < ApplicationRecord
  belongs_to :user
  has_many :user_ferments
end
