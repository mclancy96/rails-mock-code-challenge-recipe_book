Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/recipes', to: "recipes#index", as: "recipes"
  get '/chefs', to: "chefs#index", as: "chefs"

end
