Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :languages
  resources :playlists
  resources :users
  get '/playlists/:id/inter', to: 'playlists#update_rest', as: 'update_rest'
  post '/playlists/:id/', to: 'playlists#update_words', as: 'update_words'
  patch '/playlist/:id/', to: 'playlists#update_main', as: 'update_main'
  get '/playlists/:id/interdel', to: 'playlists#update_delete_inter', as: 'update_delete_inter'
  post '/playlists/:id/update_del', to: 'playlists#update_del', as: 'update_delete'
  post '/users/:id', to: 'playlists#create', as: 'playlist_create'
  get '/languages/:id/:language_id', to: 'languages#adopthelper', as: 'adopthelper'
  patch '/languages/:id/:language_id/', to: 'languages#adopt', as: 'adopt'
  post '/home/index', to: 'home#helper', as: 'languagehelp'
end
