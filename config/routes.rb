Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  get 'messages/index'
  #root to: "messages#index"       質問終わったら消す
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
