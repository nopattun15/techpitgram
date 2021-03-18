Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: { registrations: 'registrations' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get 'users/:id', to: 'users#show', as: 'user'

  resources :posts, only: [:index, :new, :create] do
    resources :photos, only: [:create]
  end
end
