Rails.application.routes.draw do
  get 'applies/create'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
	root 'static_pages#index'
	resources :static_pages do
    resources :comments
    resources :applies
  end
	resources :jobs do
    resources :comments
  end
  resources :admins
  resources :categories
end
