defmodule Wizard.Game.Deck do
  @moduledoc false

  alias Wizard.Game.Card

  @colors [:red, :green, :blue, :yellow]

  @doc false
  def new do
    (create_normal_cards() ++ create_wizard_cards() ++ create_fool_cards())
    |> Enum.shuffle()
  end

  defp create_normal_cards do
    for color <- @colors, number <- 1..13 do
      %Card{type: :normal, value: number, color: color}
    end
  end

  defp create_wizard_cards do
    for _ <- 1..4 do
      Card.wizard()
    end
  end

  defp create_fool_cards do
    for _ <- 1..4 do
      Card.fool()
    end
  end

  @doc false
  def draw([]), do: :empty

  @doc false
  def draw(deck, number) when is_list(deck) and number > 0 do
    Enum.split(deck, number)
  end
end
