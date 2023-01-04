class AddForeignKeysToCategoryBudgets < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :category_budgets, :categories
    add_foreign_key :category_budgets, :budgets
  end
end
