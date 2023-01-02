Rails.application.routes.draw do
  resources :budgets
  resources :categories
  devise_for :users

end
