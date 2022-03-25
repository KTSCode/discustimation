defmodule DiscustimationWeb.PageController do
  use DiscustimationWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
