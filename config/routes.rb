Rails.application.routes.draw do
  
  get "/" => "home#top"
  get "about" => "home#about"
  
  post "logout" => "users#logout"
  post "login" => "users#login"
  get "login" => "users#login_form"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  get "users/index" => "users#index"
  get "signup" => "users#new"
  get "users/:id" => "users#show"
  post "/users/create" => "users#create"
  
  get "posts/home" => "posts#home"
  get "posts/space" => "posts#space"
end
