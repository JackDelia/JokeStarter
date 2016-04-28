Rails.application.routes.draw do
  root "static_pages#root"

  resources :users, only: [:create, :show, :index]

  resources :projects, only: [:create, :show, :index, :update, :destroy] do
    resources :contributions, only: [:create, :index]
  end

  resource :session, only: [:create, :show, :destroy]


end
