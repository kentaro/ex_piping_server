defmodule PipingServer.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Bandit, plug: PipingServer.Plug, scheme: :http, options: [port: 4000]}
    ]

    opts = [strategy: :one_for_one, name: PipingServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
