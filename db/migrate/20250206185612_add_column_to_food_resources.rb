class AddColumnToFoodResources < ActiveRecord::Migration[8.0]
  def change
    add_column :food_resources, :user_id, :integer
  end
end
