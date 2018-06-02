Rails.application.routes.draw do
  get     'sessions/new'
  get     'users/new'

  get     '/login', to: 'sessions#new'
  post    '/login', to: 'sessions#create'
  delete  '/login', to: 'sessions#destroy'

  resources :pastes

  root 'welcome#index'
end
