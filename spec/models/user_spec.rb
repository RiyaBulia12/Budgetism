require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(name: 'admin', email: 'admin@email.com', password: 'admin@@', password_confirmation: 'admin@@')
  end

  it 'should valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'should not valid without a name' do
    @user.name = nil
    expect(@user).to_not be_valid
  end

  it 'should not valid without an email' do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it 'should not valid without a password' do
    @user.password = nil
    expect(@user).to_not be_valid
  end

  it 'should not valid if password and password confirmation do not match' do
    @user.password_confirmation = 'admin'
    expect(@user).to_not be_valid
  end

  it 'should not valid if email should not unique' do
    @user.save
    @user2 = User.create(name: 'admin', email: 'admin@email.com', password: 'admin@@', password_confirmation: 'admin@@')
    expect(@user2).to_not be_valid
  end
end
