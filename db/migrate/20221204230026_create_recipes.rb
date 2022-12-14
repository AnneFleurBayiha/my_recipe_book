class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
