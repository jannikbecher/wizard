defmodule Wizard.Game.Deck do
  alias __MODULE__
  alias Wizard.Game.Deck.Card

  @colors [:red, :green, :blue, :yellow]

  def new() do
    create_normal_cards ++ create_wizard_cards ++ create_fool_cards
    |> Enum.random
  end

  defp create_normal_cards do
    for color <- @colors, number <- 1..13 do
      %Card{type: :normal, value: number, color: color}
    end
  end

  defp create_wizard_cards do
    for _ <- 1..4 do
      %Card{type: :wizard, value: nil, color: nil}
    end
  end

  defp create_fool_cards do
    for _ <- 1..4 do
      %Card(type: :fool, value: nil, color: nil}
    end
  end
end

defmodule Wizard.Game.Deck.Card do
  alias __MODULE__

  defstruct(
    type: :normal,
    value: 0,
    color: nil
  )

  @type t :: %Card{
    type: :normal | :fool | :wizard,
    value: 0..13 | nil,
    color: :red | :green | :blue | :yellow | nil
  }
end
