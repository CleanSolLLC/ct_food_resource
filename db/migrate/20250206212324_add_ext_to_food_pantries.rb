class AddExtToFoodPantries < ActiveRecord::Migration[8.0]
  def change
    add_column :food_pantries, :ext, :string
    rename_column :food_pantries, :comments, :additional_info
  end
end
