defmodule Wizard.Game.Player do
  @moduledoc false

  alias __MODULE__

  defstruct(
    name: "",
    state: nil,
    cards: [],
    tricks: [],
    bidding: [],
    score: [] 
  )

  @type t:: %Player{
    name: String.t(),
    state: :waiting | :turn,
    cards: List,
    tricks: List,
    bidding: List,
    score: List
  }

  def new(name) do
    %Player{
      name: name,
      state: :waiting
    }
  end

  def end_turn(player) do
    case player.state do
      :turn -> %Player{player | state: :waiting}
      :waiting -> player
      _ -> raise "unkown state"
    end
  end
end
