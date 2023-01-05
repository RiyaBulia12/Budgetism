class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name, null:false
      t.string :icon
      t.integer :user_id, nulll:false

      t.timestamps
    end
  end
end
