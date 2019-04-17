Rails.application.routes.draw do

  resources :users, except: [:index]
  root to: "application#index"
  resources :login, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
