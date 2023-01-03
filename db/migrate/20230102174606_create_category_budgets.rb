class CreateCategoryBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :category_budgets do |t|
      t.integer :category_id
      t.integer :budget_id

      t.timestamps
    end
  end
end
