Rails.application.routes.draw do
  root to: 'homes#top'
  get '/home/about', to: 'homes#about', as: :about
  devise_for :users
  resources :books, only: [:index, :show, :edit, :create]
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
