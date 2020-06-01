Rails.application.routes.draw do
  resources :users, only:[:new, :create]
  get '/contact', to: 'users#new'
  post '/contact', to: 'users#create'

  root 'pages#home'
  get '/about', to: 'pages#about_me'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
