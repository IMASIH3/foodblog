class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :rating
      t.string :title
      t.text :review
      t.datetime :date_time

      t.timestamps
    end
  end
end
