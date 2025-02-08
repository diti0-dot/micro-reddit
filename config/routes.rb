Rails.application.routes.draw do
  resources :users, only: [:show]
  resources :posts, only: [:index, :show]
  
  root "posts#index"
end
