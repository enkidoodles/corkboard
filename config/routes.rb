Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  
  get 'pages/home'
  root 'pages#home'
  
  resources :builds, path_names: {
    show: ''
  }
  
  resources :users

  resources :builds, except: [:index]
  resources :branches do
    resources :builds
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
