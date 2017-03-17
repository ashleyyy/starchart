Rails.application.routes.draw do
  root to: 'users#show'

  resources :users, only: [:new, :create, :show] do
    resources :tasks
    resources :stars, only: [:index, :create]
  end
  
  resources :session, only: [:new, :create, :destroy]

end
