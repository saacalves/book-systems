Rails.application.routes.draw do
  resources :users
  post '/auth' => 'auth#login'
  # resources :livros

end