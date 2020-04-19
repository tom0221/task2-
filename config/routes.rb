Rails.application.routes.draw do

  devise_for :users
  root 'home#top'
  get '/home/about' => 'home#about'

  root 'books#index'

  resources :users,only: [:create, :show,:index,:edit,:update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
end
