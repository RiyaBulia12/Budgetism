require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create(name: 'admin', email: 'admin@email.com', password: 'admin@@', password_confirmation: 'admin@@')
    @category = Category.create(id: 1, name: 'Entertainment', icon: 'https://picsum.photos/200/300?random=1',
                                user_id: @user.id)
  end

  it 'should valid with valid attributes' do
    expect(@category).to be_valid
  end

  it 'should not valid without a name' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'should not valid without a user_id' do
    @category.user_id = nil
    expect(@category).to_not be_valid
  end

  it 'should not valid if name should not unique' do
    @category.save
    @category2 = Category.create(id: 2, name: 'Entertainment', icon: 'https://picsum.photos/200/300?random=2',
                                 user_id: @user.id)
    expect(@category2).to_not be_valid
  end
end
