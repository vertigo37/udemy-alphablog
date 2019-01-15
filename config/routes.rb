Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#index'
get 'about', to: 'pages#about'

 resources :articles 
  
  get 'signup' , to: 'users#new'
#   post 'users', to: 'users#create' or do the following:
  resources :users, except: [:new]
  
  get 'login', to: 'sessions#new' # "session" controller, method "new"
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

#   ressource create routes for all methods included in users_controller, except for the method new
#   which has a special path create with the get 'signup' , to 'user#new' line above
end
