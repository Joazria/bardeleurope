class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :price

      t.timestamps
    end
  end
end
