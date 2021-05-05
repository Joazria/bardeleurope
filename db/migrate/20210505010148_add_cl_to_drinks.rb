class AddClToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :cl, :string
  end
end
