require 'rails_helper'

RSpec.describe 'Categories', type: :feature do
  before :each do
    @user = User.create(name: 'admin', email: 'admin@yahoo.com', password: 'admin@@', password_confirmation: 'admin@@')
    @category = Category.create(id: 1, name: 'Home', icon: 'https://picsum.photos/200/300?random=1', user_id: @user.id)

    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'should have valid text on page' do
    expect(page).to have_content('Categories')
    expect(page).to have_link('Add New Category')
  end

  it 'should create a new category' do
    click_on 'Add New Category'
    fill_in 'category_name', with: 'Entertainment'
    fill_in 'category_icon', with: 'https://picsum.photos/200/300?random=1'
    click_button 'Create Category'
    expect(page).to have_content('Category was successfully created.')
  end

  it 'should not create a new category without a name' do
    click_on 'Add New Category'
    fill_in 'category_name', with: ''
    fill_in 'category_icon', with: 'https://picsum.photos/200/300?random=1'
    click_button 'Create Category'
    expect(page).to have_content("Name can't be blank")
  end

  it 'should not create a new category without an icon' do
    click_on 'Add New Category'
    fill_in 'category_name', with: 'Entertainment'
    fill_in 'category_icon', with: ''
    click_button 'Create Category'
    expect(page).to have_content("Icon can't be blank")
  end

  it 'should not create a new category if name should not unique' do
    @category.save
    @category2 = Category.create(id: 2, name: 'Home', icon: 'https://picsum.photos/200/300?random=2', user_id: @user.id)
    expect(@category2).to_not be_valid
  end
end
