Rails.application.routes.draw do
  resources :teas
  get 'teas/index'
  get 'teas/show'
  get 'teas/new'
  get 'teas/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
