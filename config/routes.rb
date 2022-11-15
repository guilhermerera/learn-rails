Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  root "root#index"
  get "/contact", to: "root#contact"
  get "/about" , to: "root#about"
  get "/api", to: "root#api"
  get "user/:id/:name", to:"root#user"

end
