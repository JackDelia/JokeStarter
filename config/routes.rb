Rails.application.routes.draw do
  root "static_pages#root"

  resources :users, only: [:create, :update, :show, :index]
  resources :follows, only: [:create, :destroy]


  resources :projects, only: [:create, :show, :index, :update, :destroy] do
    resources :contributions, only: [:create, :index]
    resources :comments, only: [:create, :index]
    resources :updates, only: [:create, :index]
  end

  resource :session, only: [:create, :show, :destroy]


end
