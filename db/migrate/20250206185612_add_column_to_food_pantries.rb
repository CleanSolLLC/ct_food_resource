class AddColumnToFoodPantries < ActiveRecord::Migration[8.0]
  def change
    add_column :food_pantries, :user_id, :integer
  end
end
