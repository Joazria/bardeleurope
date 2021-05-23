class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :category
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
