class CategoryBudget < ApplicationRecord
  belongs_to :category
  belongs_to :budget
end
