defmodule Wizard.Game.Deck do
  @moduledoc false

  alias __MODULE__
  alias Wizard.Game.Card

  @colors [:red, :green, :blue, :yellow]

  def new() do
    create_normal_cards ++ create_wizard_cards ++ create_fool_cards
    |> Enum.shuffle
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
      %Card{type: :fool, value: nil, color: nil}
    end
  end
end
