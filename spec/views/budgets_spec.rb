require 'rails_helper'

RSpec.describe 'Budgets', type: :feature do
  before :each do
    @user = User.create(name: 'admin', email: 'admin@email.com', password: 'admin@@', password_confirmation: 'admin@@')
    @category = Category.create(id: 1, name: 'Entertainment', icon: 'https://picsum.photos/200/300?random=1',
                                user_id: @user.id)
    @budget = Budget.create(id: 1, name: 'Netflix', amount: 11, user_id: 1)
    @category_budget = CategoryBudget.create(id: 1, budget_id: @budget.id, category_id: @category.id)

    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'should create a new budget' do
    click_on 'Entertainment'
    click_on 'Add New Transaction'
    fill_in 'budget_name', with: 'Netflix'
    fill_in 'budget_amount', with: 11
    click_button 'Add Budget'
    expect(page).to have_content('Budget was successfully created.')
  end

  # it 'should not create a new budget without a name' do
  #   visit new_budget_path
  #   fill_in 'budget_name', with: ''
  #   fill_in 'budget_amount', with: 11
  #   click_button 'Create Budget'
  #   expect(page).to have_content("Name can't be blank")
  # end
end
