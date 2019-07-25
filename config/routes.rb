Rails.application.routes.draw do
  # devise_for :users
  root to: 'welcome#index'
  devise_for :users, path: 'users', controllers: {
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    sessions: 'users/sessions'
  }
  resources :tickets, only: %i(new index create)
end
