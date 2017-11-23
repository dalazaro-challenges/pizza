Rails.application.routes.draw do

  # Root: users#index
  root to: 'users#index'

  # Baker: orders#edit
  get '/Baker', to: 'orders#index', as: 'orders'
  get 'orders/:id', to: 'orders#show', as: 'order'
  get '/orders/:id/edit', to: 'orders#edit', as: 'edit_order'
  patch '/orders/:id', to: 'orders#update'

  # Cashier: orders#new
  get '/Cashier', to: 'orders#new', as: 'new_order'
  post '/orders', to: 'orders#create'

  # Manager: orders#index
  get '/Manager', to: 'users#manager', as: 'manager'

  delete '/orders/:id', to: 'orders#destroy'

end
