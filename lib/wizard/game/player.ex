defmodule Wizard.Game.Player do
  @moduledoc false

  alias __MODULE__

  defstruct(
    id: -1,
    name: "",
    state: nil,
    cards: [],
    tricks: [],
    bidding: [],
    score: [] 
  )

  @type t:: %Player{
    id: Integer,
    name: String.t(),
    state: :waiting | :turn,
    cards: List,
    tricks: List,
    bidding: List,
    score: List
  }

  def new(id) do
    new(id, "")
  end

  def new(id, name) do
    %Player{
      id: id,
      name: name,
      state: :waiting
    }
  end

  def set_cards(player, cards) do
    %Player{player | cards: cards}
  end

  def end_turn(player) do
    case player.state do
      :turn -> %Player{player | state: :waiting}
      :waiting -> player
      _ -> raise "unkown state"
    end
  end
end
