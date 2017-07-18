Rails.application.routes.draw do
  
  

  get 'scraps/index'

  get 'scraps/show'

  get 'scraps/new'

  get 'scraps/create'

  get 'scraps/edit'

  get 'scraps/update'

  get 'scraps/destroy'

  get 'projects/index'

  get 'projects/show'

  get 'projects/new'

  get 'projects/create'

  get 'projects/edit'

  get 'projects/update'

  get 'projects/destroy'

  get 'services/index'

  get 'services/show'

  get 'services/new'

  get 'services/create'

  get 'services/edit'

  get 'services/update'

  get 'services/destroy'

  get 'operatings/index'

  get 'operatings/show'

  get 'operatings/new'

  get 'operatings/create'

  get 'operatings/edit'

  get 'operatings/update'

  get 'operatings/destroy'

  get 'offshores/index'

  get 'offshores/show'

  get 'offshores/new'

  get 'offshores/create'

  get 'offshores/edit'

  get 'offshores/update'

  get 'offshores/destroy'

  get 'locations/index'

  get 'locations/show'

  get 'locations/new'

  get 'locations/create'

  get 'locations/edit'

  get 'locations/update'

  get 'locations/destroy'

  get 'employees/index'

  get 'employees/show'

  get 'employees/new'

  get 'employees/create'

  get 'employees/edit'

  get 'employees/update'

  get 'employees/destroy'

  get 'items/index'

  get 'items/show'

  get 'items/new'

  get 'items/create'

  get 'items/edit'

  get 'items/update'

  get 'items/destroy'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'

  get 'users/dashboard'
  get 'users/show'
  get 'users/index'
  get 'static_pages/home'
  get 'static_pages/data_tables'
  get 'static_pages/services'
  get 'static_pages/ourvalues'
  get 'scraps/index'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/scrap_project'
  


  get  '/signup',  to: 'users#new'
  
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :operatings,    :index, :show, :new, :create, :destroy
 resources :services,      :index, :show, :new, :create, :destroy
 resources :news,          :index, :show,  :destroy
 resources :scraps,        :index, :show, :new, :create, :destroy
 resources :locations,     :index, :show, :new, :create, :destroy
 resources :workers,       :index, :show, :new, :create, :destroy
 # resources :assets,        :index, :show, :new, :create, :destroy
 resources :items,         :index, :show, :new, :create, :destroy
 resources :offshores,     :index, :show, :new, :create, :destroy
 resources :projects,      :index, :show, :new, :create, :destroy
 resources :contracts,     :index, :show, :new, :create, :destroy
 resources :users
 resources :account_activations, only: [:edit]
 resources :password_resets,     only: [:new, :create, :edit, :update]
end