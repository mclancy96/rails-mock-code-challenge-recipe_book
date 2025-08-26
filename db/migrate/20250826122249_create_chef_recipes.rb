class CreateChefRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :chef_recipes do |t|
      t.references :chef, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true
      t.string :comment

      t.timestamps
    end
  end
end
