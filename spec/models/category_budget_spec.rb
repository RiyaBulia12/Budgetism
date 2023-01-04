require 'rails_helper'

RSpec.describe CategoryBudget, type: :model do
  before :each do
    @user = User.create(name: 'admin', email: 'admin@email.com', password: 'admin@@', password_confirmation: 'admin@@')
    @category = Category.create(id: 1, name: 'Entertainment', icon: 'https://picsum.photos/200/300?random=1',
                                user_id: @user.id)
    @budget = Budget.create(id: 1, name: 'Netflix', amount: 11, user_id: 1)
    @category_budget = CategoryBudget.create(id: 1, budget_id: @budget.id, category_id: @category.id)
  end

  it 'should not valid without a category_id' do
    @category_budget.category_id = nil
    expect(@category_budget).to_not be_valid
  end

  it 'should not valid without a budget_id' do
    @category_budget.budget_id = nil
    expect(@category_budget).to_not be_valid
  end

  it 'should not valid if category_id should not unique' do
    @category_budget.save
    @category_budget2 = CategoryBudget.create(id: 2, budget_id: @budget.id, category_id: @category.id)
    expect(@category_budget2).to_not be_valid
  end

  it 'should not valid if budget_id should not unique' do
    @category_budget.save
    @category_budget2 = CategoryBudget.create(id: 2, budget_id: @budget.id, category_id: @category.id)
    expect(@category_budget2).to_not be_valid
  end

  it 'should not valid if budget_id and category_id should not unique' do
    @category_budget.save
    @category_budget2 = CategoryBudget.create(id: 2, budget_id: @budget.id, category_id: @category.id)
    expect(@category_budget2).to_not be_valid
  end
end
