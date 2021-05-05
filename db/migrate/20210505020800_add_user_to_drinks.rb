class AddUserToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_reference :drinks, :user, null: false, foreign_key: true
  end
end
