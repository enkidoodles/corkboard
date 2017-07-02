Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :builds, path_names: {
    show: ''
  }
  resources :branches do
    resources :builds
  end
  get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
