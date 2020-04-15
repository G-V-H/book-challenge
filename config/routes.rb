Rails.application.routes.draw do
  get 'books/index', to: 'books#index'
  get 'books/show/:id', to: 'books#show'
  get 'books/create', to: 'books#create'
  get 'books/update', to: 'books#update'
  get 'books/destroy', to: 'books#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'pages#index', as: 'home'
  get '/about', to: 'pages#about', as: 'about'

  get '/products', to: 'products#index'
end
