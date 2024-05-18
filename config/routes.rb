Rails.application.routes.draw do
  resources :restaurants do
    resources :tables do
      resources :reservations, only: [:index, :new, :create, :destroy]
      resources :staffs, only: [:index, :new, :create]
    end
  end
  post '/Register_staff', to: 'staffs#create', as: :register_staff

  get 'add_restaurant', to: 'restaurants#new', as: 'add_restaurant'

  get '/dashboard', to: 'restaurants#index'
  get '/staff_dashboard', to: 'restaurants#indexes'

  # # Only for User
  # get '/potahi', to: 'potahis#view'

  # First Routes of Rails 
  get '/', to: 'users#user'

  # Function Admin and User Registration
  get '/registration', to: 'users#registration'
  get '/Cregistration', to: 'civilians#registration'

  # Define route for the admin page
  get '/admin', to: 'users#index'

  # Define route for the staff page
  get '/staff', to: 'staffs#index'

  get '/index', to: 'staffs#index'

  #add Staff
  get '/add_staff', to: 'staffs#registration'
  post '/create_staff', to: 'staffs#create'

  #add admin
  post '/users', to: 'users#create'

  #add staff
  post '/Register_staff', to: 'staffs#create'
  

  get '/create_admin', to: 'users#registration'

  # Function for login
  post '/Adminsessions', to: 'sessions#create'
  post '/Staff_Sessions', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'

  
  # Define the login page route if not already defined
  get '/login', to: 'sessions#new'
end
