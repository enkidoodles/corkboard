Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, controllers: { registrations: "registrations" }
  resources :builds, path_names: {
    show: ''
  }
=======
  resources :builds, except: [:index]
>>>>>>> 5310b260f54ce11a0806f638e4f124be5021b229
  resources :branches do
    resources :builds
  end
  get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
