Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :visitors, only: [:new, :create]
  resources :contacts, only: [:new, :create]
  root to: 'visitors#new'
end
