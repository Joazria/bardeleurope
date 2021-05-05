class AddSubcatToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :subcat, :string
  end
end
