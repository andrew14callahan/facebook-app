Rails.application.routes.draw do
  root             'static_pages#home'
  get 'about'   => 'static_pages#about'

  # The following routes are for Facebook integration.

  # This route ties the default omniauth provider callback to the sessions controller.
  get 'auth/:provider/callback', to: 'sessions#create'

  # This route provides gracefull error handling
  get 'auth/failure', to: redirect('/')

  # This route allows for user to log out.
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

end