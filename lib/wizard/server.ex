defmodule Wizard.Server do
  @moduledoc false

  use GenServer

  alias __MODULE__
  alias Wizard.Game

  def start_link(%Game{} = game_state) do
    GenServer.start_link(Server, game_state)
  end

  def start_link(number_players) do
    GenServer.start_link(Server, number_players)
  end

  def init(%Game{} = game_state) do
  end

  def init(number_players) do
    {:ok, Game.new(number_players)}
  end

  def handle_call({}, _from, game) do
    {:reply, game, game}
  end
end
