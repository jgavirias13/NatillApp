Rails.application.routes.draw do
  resources :pagos
  get '/grupos/:id/users', to: 'grupos#usuarios'
  get '/users/:id/grupos', to: 'users#grupos'
  get '/pagos/users/:id', to: 'pagos#usuarios'
  get '/pagos/grupos/:id', to: 'pagos#grupos'
  resources :grupo_users
  resources :grupos
  resources :users
  get '/users/buscar/:token', to: 'users#buscar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
