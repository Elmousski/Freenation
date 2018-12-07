Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  resources :users
  resources :charges

  resources :events
  get "events/subscribe/:id", to: "events#subscribe"

  resources :profils

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
