Rails.application.routes.draw do
  root to: "application#index"

  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :logins, only: [:new, :create, :destroy]
  resources :media, only: [:index, :show]
  post "/media", to: "media#index", as: "search_media"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
