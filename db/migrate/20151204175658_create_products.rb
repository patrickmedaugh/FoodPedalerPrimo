class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :price
      t.string :category
      t.string :name
      t.string :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
