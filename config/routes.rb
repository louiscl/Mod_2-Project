Rails.application.routes.draw do
  resources :admins, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :requests, only: [:index, :show, :edit, :destroy]
  resources :answers, only: [:show, :edit, :destroy]
  resources :questions
  resources :applications
  resources :teams
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get '/teams/:id/requests/new', to: 'requests#new', as: 'new_request'
  post '/teams/:id/requests', to: 'requests#create'

  get '/sessions/new_admin_session', to: 'sessions#new_admin_session', as: 'new_admin_session'
  post '/sessions/new_admin_session', to: 'sessions#create_admin_session', as: 'admin_session'
  delete '/sessions', to: 'sessions#destroy'

  get 'teams/:id/answers/new', to: 'answers#new', as: 'new_answer'
  post '/teams/:id/answers', to: 'answers#create'
  
  get 'admins/:id/my_teams', to: 'admins#my_teams', as: 'my_teams'
end
  