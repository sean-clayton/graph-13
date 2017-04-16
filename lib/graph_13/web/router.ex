defmodule Graph13.Web.Router do
  use Graph13.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Graph13.Web do
    resources "/users", UserController, except: [:new, :edit]
    resources "/posts", PostController, except: [:new, :edit]
    pipe_through :api
  end

  forward "/graph", Absinthe.Plug,
    schema: Graph13.Schema
  
  forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: Graph13.Schema
end
