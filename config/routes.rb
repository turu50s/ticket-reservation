Rails.application.routes.draw do
  # get 'tickets/new'
  # get 'tickets/index'
  root to: 'tickets#index'
  resources :tickets, only: %i(new index create)
end
