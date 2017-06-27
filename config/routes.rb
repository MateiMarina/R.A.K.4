Rails.application.routes.draw do
  
  get 'users/new'

  root 'static_pages#home'

  get 'users/dashboard'
  get 'users/show'
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
end