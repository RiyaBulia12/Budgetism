class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :name, null: false
      t.integer :amount, null: false, default: 0
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
