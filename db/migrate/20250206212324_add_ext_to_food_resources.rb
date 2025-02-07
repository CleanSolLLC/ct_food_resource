class AddExtToFoodResources < ActiveRecord::Migration[8.0]
  def change
    add_column :food_resources, :ext, :string
    rename_column :food_resources, :comments, :additional_info
  end
end
