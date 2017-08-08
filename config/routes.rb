Rails.application.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'

  get 'users/dashboard'
  get 'users/show'
  get 'users/index'
  get 'static_pages/home'
  get 'static_pages/data_tables'
  get 'static_pages/contact'
  get 'static_pages/ourvalues'
  get 'static_pages/AKL'
  get 'static_pages/rak'
  get 'static_pages/service'

  get 'scraps/index'
  get 'static_pages/about'
  get 'static_pages/visitus'
  get 'static_pages/scrap_project'
  get 'tests/test1', to: 'tests#test1'
  get 'tests/test8', to: 'tests#test8'
  get 'tests/test4', to: 'tests#test4'
  get 'tests/test5', to: 'tests#test5'
  get 'tests/test6', to: 'tests#test6'
  get 'tests/test7', to: 'tests#test7'
  get 'tests/test10', to: 'tests#test10'
  get 'tests/test12', to: 'tests#test12'
  get 'tests/test2', to: 'tests#test2'


  get 'tests/project', to: 'tests#project'
  get 'tests/temporary1', to: 'tests#temporary1'
  post 'tests/project'
  get 'tests/home', to: 'tests#home'
  post 'tests/home'
  post 'tests/test1'
  post 'tests/test2'
  post 'tests/test4'
  post 'tests/test5'
  post 'tests/test6'
  post 'tests/test7'
  post 'tests/test8'
  post 'tests/test10'
  post 'tests/test12'



  get  '/register',  to: 'users#new'

  post '/register',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :operatings,    :index, :show, :new, :create, :destroy
 resources :services,      :index, :show, :new, :create, :destroy
 resources :news,          :index, :show,  :destroy
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
end
