class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :categorey
      t.text :measurement

      t.timestamps
    end
  end
end
