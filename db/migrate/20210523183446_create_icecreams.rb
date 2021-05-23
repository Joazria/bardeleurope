class CreateIcecreams < ActiveRecord::Migration[6.0]
  def change
    create_table :icecreams do |t|
      t.string :category
      t.string :name
      t.text :description
      t.string :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
