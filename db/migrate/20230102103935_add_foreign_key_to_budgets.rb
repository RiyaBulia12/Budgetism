class AddForeignKeyToBudgets < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :budgets, :users, column: :user_id, on_delete: :cascade
  end
end
