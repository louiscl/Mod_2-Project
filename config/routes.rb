Rails.application.routes.draw do
  resources :requests, only: [:index]
  resources :answers
  resources :questions
  resources :applications
  resources :teams
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/teams/:id/requests/new', to: 'requests#new', as: 'new_request'
  post '/teams/:id/requests', to: 'requests#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
  