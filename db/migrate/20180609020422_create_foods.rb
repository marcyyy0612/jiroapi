class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :price
      t.integer :type
      t.string :image_url
      t.text :description
      t.timestamps
    end
  end
end
