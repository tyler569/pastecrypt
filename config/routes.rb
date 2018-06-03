Rails.application.routes.draw do

  get     '/login', to: 'sessions#new'
  post    '/login', to: 'sessions#create'
  delete  '/login', to: 'sessions#destroy'

  get     '/signup', to: 'users#new'

  resources :pastes
  resources :users

  root 'welcome#index'
end
