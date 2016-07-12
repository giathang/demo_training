Rails.application.routes.draw do
	root 'static_pages#index'
  get 'admin' => 'static_pages#admin'
	resources :static_pages
	resources :jobs
  resources :users
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
