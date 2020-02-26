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
    current_player: nil,
    middle_cards: [],
    deck: [],
    score: %{}
  )

  @type action :: :lay_card | :select_trump

  def new(number_players) do
    %Game{}
    :ok
  end
end
