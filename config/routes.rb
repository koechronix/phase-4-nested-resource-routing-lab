Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:show, :index, :create]
    # resources :users, only: %i[show show create]
  end
end
