defmodule Wizard.Application do
  @moduledoc false

  use Application

  @doc false
  def start(_type, _args) do
    children = [
      {DynamicSupervisor, strategy: :one_for_one, name: Wizard.DynamicSupervisor}
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
