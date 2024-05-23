defmodule RestApiWeb.PageController do
  use RestApiWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    IO.puts("Users function hit!")
    users = [
      %{id: 1, name: "Alice", email: "alice@email.com"},
      %{id: 2, name: "Bob", email: "bob@email.com"}
    ]
    render(conn, :users, users: users, layout: false)
  end

  def users_json(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "alice@email.com"},
      %{id: 2, name: "Bob", email: "bob@email.com"}
    ]
    json(conn, %{users: users})
  end
end
