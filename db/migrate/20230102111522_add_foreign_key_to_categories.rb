class AddForeignKeyToCategories < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :users, column: :user_id, on_delete: :cascade
  end
end
