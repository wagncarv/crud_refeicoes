defmodule CrudRefeicoes.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CrudRefeicoes.Repo,
      # Start the Telemetry supervisor
      CrudRefeicoesWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CrudRefeicoes.PubSub},
      # Start the Endpoint (http/https)
      CrudRefeicoesWeb.Endpoint
      # Start a worker by calling: CrudRefeicoes.Worker.start_link(arg)
      # {CrudRefeicoes.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CrudRefeicoes.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CrudRefeicoesWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
