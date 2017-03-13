Rails.application.routes.draw do

  get '/dashboard' => 'pages#dashboard'

  resources :clients, only: [:index, :show, :create] do
    resources :dossiers, only: [:new, :create];
    resources :biens, only: [:new, :create];
  end

  resources :clients, only: [:edit, :update]
  resources :dossiers, only: [:index, :show, :update, :edit]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
