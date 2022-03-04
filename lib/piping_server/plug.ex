defmodule PipingServer.Plug do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, """
    Yet another `Piping Server` implementation in Elixir.
    See the <a href="https://github.com/kentaro/ex_piping_server/">GitHub repository</a> for details.
    """)
  end

  match _ do
    conn |> handle_conn()
  end

  defp handle_conn(conn) do

  end
end
