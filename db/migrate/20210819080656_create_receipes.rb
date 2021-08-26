class CreateReceipes < ActiveRecord::Migration[5.2]
  def change
    create_table :receipes do |t|
      t.string :name
      t.text :ingredient
      t.text :direction
      t.datetime :preparation_time
      t.datetime :cooking_time
      t.string :servings
      t.string :category
      t.string :picture
      t.string :created_by

      t.timestamps
    end
  end
end
