Rails.application.routes.draw do

  # Root: users#index
  root to: 'users#index'

  # Baker: orders#edit
  get '/Baker', to: 'orders#index', as: 'orders'
  get '/order/:id/edit', to: 'order#edit', as: 'edit_order'
  patch '/orders/:id', to: 'orders#update'

  # Cashier: orders#new
  get '/Cashier', to: 'orders#new', as: 'new_order'
  post '/orders', to: 'orders#create'

  # Manager: orders#index
  get '/Manager', to: 'application#manager', as: 'manager'

  delete '/orders/:id', to: 'orders#destroy'

end
