Rails.application.routes.draw do
  
  # Route for Splash Page 
  # Will need to Change this later
  root to: "game#index"

  # Routes for Games
  # Shouldn't need Create, Update, or Destroy since we'll seed the data from Giant Bomb's API
  get "/games", to: "games#index", as: "games"
  get "/games/:id", to: "games#show", as: "game"

  #Routes for Users
  get "/users", to: "user#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  
end
