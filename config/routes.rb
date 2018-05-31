Rails.application.routes.draw do
  get 'users/new'
  resources :pastes

  root 'welcome#index'
end
