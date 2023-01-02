class AddForeignKeyToCategories < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :budgets, column: :budget_id, on_delete: :cascade
    add_foreign_key :categories, :users, column: :user_id, on_delete: :cascade
  end
end
