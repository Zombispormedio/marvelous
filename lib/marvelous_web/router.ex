defmodule MarvelousWeb.Router do
  use MarvelousWeb, :router

  pipeline :api do
    plug :accepts, ["json"] 
  end

  scope "/", MarvelousWeb do
    pipe_through :api 
    get "/", RootController, :index
  end

  scope "/bot", MarvelousWeb do
    pipe_through :api 
    post "/", BotController, :execute
  end
end
