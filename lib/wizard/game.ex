defmodule Wizard.Game do
  @moduledoc """
  Implements the game logic.
  """

  alias __MODULE__
  alias Wizard.Game.Player

  defstruct(
    players: %{},
    number_players: 0,
    round: 0,
    current_trump: nil,
    deck: []
  )

  @type t :: %Game{
    players:
  }

  @type action :: :lay_card | :select_trump

  def new()

  def 
end
