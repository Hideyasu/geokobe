defmodule GeokobeWeb.PageController do
  use GeokobeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
