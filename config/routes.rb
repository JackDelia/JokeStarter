Rails.application.routes.draw do
  root "static_pages#root"

  resources :users, only: [:create, :show, :index]

  resources :projects, only: [:create, :show, :index, :update, :destroy]

  resource :session, only: [:create, :show, :destroy]
end
