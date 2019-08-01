Rails.application.routes.draw do
  # devise_for :users
  root to: 'welcome#index'

  devise_for :users, path: 'users', controllers: {
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    sessions: 'users/sessions'
  }
  resources :tickets, only: %i(new index create)

  # ユーザー
  namespace :users do
    resources :tickets do
      resources :deliveries, only: %i(new create) do
        get :confirm, to: 'deliveries#new', on: :collection
      end
    end
    get :complete, to: 'deliveries#complete'
  end
end
