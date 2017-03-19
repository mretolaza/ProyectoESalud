defmodule Esalud01.Router do
  use Esalud01.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Esalud01 do
    pipe_through :api
  end
end
