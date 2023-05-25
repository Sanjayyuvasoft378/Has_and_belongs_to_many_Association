Rails.application.routes.draw do
  get 'assemblies_parts/index'
  get 'assemblies_parts/show'
  get 'assemblies_parts/new'
  get 'assemblies_parts/edit'
  get 'assemblies/index'
  get 'assemblies/show'
  get 'assemblies/new'
  get 'assemblies/edit'
  get 'parts/index'
  get 'parts/show'
  get 'parts/new'
  get 'parts/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :assemblies
  resources :parts
  resources :assemblies_parts
end
