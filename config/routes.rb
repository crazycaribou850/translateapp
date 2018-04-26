Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :languages
  resources :playlists
  resources :users
  post '/playlists/:id/', to: 'playlists#update_main', as: 'update_main_post'
  patch '/playlist/:id/', to: 'playlists#update_main', as: 'update_main'
  patch '/playlists/:id/', to: 'playlists#update', as: 'update_playlist'
  post '/users/:id', to: 'playlists#create', as: 'playlist_create'
  get '/languages/:id/:language_id', to: 'languages#adopthelper', as: 'adopthelper'
  patch '/languages/:id/:language_id/', to: 'languages#adopt', as: 'adopt'
  post '/home/index', to: 'home#helper', as: 'languagehelp'
end
