class CreateFermentRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :ferment_recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :instructions
      t.integer :fermentation_time
      t.belongs_to :user
      

      t.timestamps

    end
  end
end
