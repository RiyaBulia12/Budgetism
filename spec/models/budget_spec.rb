require 'rails_helper'

RSpec.describe Budget, type: :model do
  before :each do
    @user = User.create(id: 1, name: 'admin', email: 'admin@email.com', password: 'admin@@',
                        password_confirmation: 'admin@@')
    @budget = Budget.create(id: 1, name: 'Netflix', amount: 11, user_id: 1)
  end

  it 'should valid with valid attributes' do
    expect(@budget).to be_valid
  end

  it 'should not valid without a name' do
    @budget.name = nil
    expect(@budget).to_not be_valid
  end

  it 'should not valid without an amount' do
    @budget.amount = nil
    expect(@budget).to_not be_valid
  end

  it 'should not valid without a user_id' do
    @budget.user_id = nil
    expect(@budget).to_not be_valid
  end

  it 'should not valid if amount is not a number' do
    @budget.amount = 'test'
    expect(@budget).to_not be_valid
  end

  it 'should valid if amount is equall to 0' do
    @budget.amount = 0
    expect(@budget).to be_valid
  end

  it 'should not valid if amount is not greater than 0' do
    @budget.amount = -1
    expect(@budget).to_not be_valid
  end
end
