class FermentRecipe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :user_ferments


  has_many_attached :photos

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true
  validates :fermentation_time, presence: true
end
