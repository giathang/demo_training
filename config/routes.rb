Rails.application.routes.draw do
	root 'static_pages#index'
	resources :static_pages
	resources :jobs
  resources :users
  get 'admin' => 'users#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
