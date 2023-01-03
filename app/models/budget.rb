class Budget < ApplicationRecord
  belongs_to :user
  has_many :category_budgets, foreign_key: :budget_id, dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true, numericality: true
end
