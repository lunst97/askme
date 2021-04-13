Rails.application.routes.draw do
  root 'users#index'

  resources :users, except: []
  resources :session, only: [:new, :create, :destroy]
  resources :questions, except: [:show, :new, :index]

  get 'sing_up' => 'users#new'
  get 'log_out' => 'session#destroy'
  get 'log_in' => 'session#new'
  get 'show' => 'users#show'
end
