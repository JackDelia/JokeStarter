Rails.application.routes.draw do
  root "static_pages#root"

  resources :users, only: [:create, :show]

  resource :session, only: [:create, :show, :destroy]
end
