class Category < ApplicationRecord
  belongs_to :user
  has_many :category_budgets, foreign_key: :category_id, class_name: 'CategoryBudget'
  has_many :budgets, through: :category_budgets

  validates :name, presence: true, uniqueness: { scope: :user_id }
  validates :icon, presence: true

  def total_amount
    budgets.sum(:amount)
  end

end
