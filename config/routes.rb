Rails.application.routes.draw do
  
  # Route for Splash Page 
  # Will need to Change this later
  root to: "game#index"

  # Routes for Games
  get "/games", to: "games#index", as:"games"
end
