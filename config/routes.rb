Rails.application.routes.draw do

  root 'static_pages#home'

  # SIMPLE ROUTES FOR APP>VIWES>PASSWORD_RESET
  get 'password_resets/new'
  get 'password_resets/edit'

  # SIMPLE ROUTES FOR APP>VIEWS>USERS
  get 'users/new'
  get 'users/dashboard'
  get 'users/show'
  get 'users/index'

  # SIMPLE ROUTES FOR APP>VIEWS>REGISTER
  get  '/register',  to: 'users#new'
  post '/register',  to: 'users#create'

  # SIMPLE ROUTES FOR APP>VIEWS>LOGIN AND APP>VIEWS>LOGOUT
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # SIMPLE ROUTES FOR APP>VIEWS>SESSION
  get 'sessions/new'

  # SIMPLE ROUTES FOR APP>VIEWS>SCRAPS
  get 'scraps/index'

  # ROUTES TO SHOW APP>VIEWS>STATIC_PAGES ERB FILES
  get 'static_pages/home'
  get 'static_pages/data_tables'
  get 'static_pages/contact'
  get 'static_pages/ourvalues'
  get 'static_pages/AKL'
  get 'static_pages/rak'
  get 'static_pages/service'
  get 'static_pages/about'
  get 'static_pages/visitus'
  get 'static_pages/scrap_project'

  # RESOURCEFUL ROUTES
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :operatings,    :index, :show, :new, :create, :destroy
  resources :services,      :index, :show, :new, :create, :destroy
  resources :news,          :index, :show, :destroy
  resources :scraps,        :index, :show, :new, :create, :destroy
  resources :locations,     :index, :show, :new, :create, :destroy
  resources :employees,     :index, :show, :new, :create, :destroy
  resources :vessels,       :index
  resources :items,         :index, :show, :new, :create, :destroy
  resources :offshores,     :index, :show, :new, :create, :destroy
  resources :projects,      :index, :show, :new, :create, :destroy
  resources :contracts,     :index, :show, :new, :create, :destroy
  resources :companies,     :index, :show, :new, :create, :destroy
  resources :users
  resources :tests
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  # ROUTES TO SHOW EACH OF THE QUERIES ERB VIEW:
  get 'queries/query1', to: 'queries#query1'
  get 'queries/query2', to: 'queries#query2'
  get 'queries/query4', to: 'queries#query4'
  get 'queries/query5', to: 'queries#query5'
  get 'queries/query6', to: 'queries#query6'
  get 'queries/query7', to: 'queries#query7'
  get 'queries/query8', to: 'queries#query8'
  get 'queries/query10', to: 'queries#query10'
  get 'queries/query12', to: 'queries#query12'
  get 'queries/project', to: 'queries#project'
  # ROUTES TO PROCESS THE FORM IN EACH OF THE QUERIES ERB VIEW
  post 'queries/query1'
  post 'queries/query2'
  post 'queries/query4'
  post 'queries/query5'
  post 'queries/query6'
  post 'queries/query7'
  post 'queries/query8'
  post 'queries/query10'
  post 'queries/query12'
  post 'queries/project'

end
