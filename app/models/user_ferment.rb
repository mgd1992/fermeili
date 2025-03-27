class UserFerment < ApplicationRecord
  belongs_to :user
  belongs_to :ferment_recipe
end
