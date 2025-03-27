class CreateUserFerments < ActiveRecord::Migration[7.1]
  def change
    create_table :user_ferments do |t|
      t.string :name
      t.string :comments
      t.integer :fermentation_starts
      t.integer :fermentation_end
      t.belongs_to :user
      t.belongs_to :ferment_recipe

      t.timestamps
    end
  end
end
