Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    authenticated :user do
      root 'categories#index', as: :authenticated_root
    end
  end

  root to: 'shared#splash'

  resources :categories, only: [:index, :new, :create, :show] do
    resources :budgets, only: [:index, :new, :create, :show]
  end

end
