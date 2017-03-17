Rails.application.routes.draw do
  root to: 'user#index'

  resources :users, only: [:new, :create, :show] do
    resources :tasks
    resources :stars, only: [:index, :create]
  end
  
  resources :session, only: [:new, :create, :destroy]

end
