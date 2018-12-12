Rails.application.routes.draw do
  root 'home#index'
  get 'test', to: 'home#test'
  devise_for :users
  resources :users
  resources :charges
  resources :home, only: [:index, :new, :create]
  resources :events
  get "events/subscribe/:id", to: "events#subscribe"
  resources :contactadmin
  resources :profils

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
