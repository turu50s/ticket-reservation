Rails.application.routes.draw do
  # get 'tickets/new'
  # get 'tickets/index'
  
  resources :tickets, only: %i(new index create)
end
