Rails.application.routes.draw do
  
  # Route for Splash Page 
  # Will need to Change this later
  root to: "welcome#index"

  # Routes for Games
  # Shouldn't need Create, Update, or Destroy since we'll seed the data from Giant Bomb's API
  get "/games", to: "games#index", as: "games"
  get "/games/:id", to: "games#show", as: "game"

  #Routes for Users
  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  #Routes for Sessions
  get "/login", to: "sessions#new", as: "new_session"
  get "/logout", to: "sessions#destroy", as: "destroy_session"
  post "/sessions", to: "sessions#create"
end
