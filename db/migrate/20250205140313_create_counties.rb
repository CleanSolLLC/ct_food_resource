class CreateCounties < ActiveRecord::Migration[8.0]
  def change
    create_table :counties do |t|
      t.string :name

      t.timestamps
    end
  end
end
