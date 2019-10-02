Rails.application.routes.draw do
  resources :admins
  resources :requests, only: [:index, :show, :edit, :destroy]
  resources :answers, only: [:index, :show, :edit, :destroy]
  resources :questions
  resources :applications
  resources :teams
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/teams/:id/requests/new', to: 'requests#new', as: 'new_request'
  post '/teams/:id/requests', to: 'requests#create'
  delete '/sessions', to: 'sessions#destroy'


  get 'teams/:id/answers/new', to: 'answers#new', as: 'new_answer'
  post '/teams/:id/answers', to: 'answers#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
  