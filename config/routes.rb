Rails.application.routes.draw do
  
  get "/" => "home#top"
  get "login" => "home#login"
  get "about" => "home#about"
  
  get "users/index" => "users#index"
  get "signup" => "users#new"
  get "users/:id" => "users#show"
end
