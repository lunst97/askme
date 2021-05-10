Rails.application.routes.draw do
  resources :hashtags
  root 'users#index'

  resources :users, only: [:new, :create, :update, :show, :index, :destroy, :edit]
  resources :session, only: [:new, :create, :destroy]
  resources :questions, except: [:show, :new, :index]

  get 'sing_up' => 'users#new'
  get 'log_out' => 'session#destroy'
  get 'log_in' => 'session#new'
  get 'show' => 'users#show'
end
