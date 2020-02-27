defmodule WizardGameDeckTest do
  use ExUnit.Case

  alias Wizard.Game.Deck

  test "create new random deck" do
    deck = Deck.new()
    assert length(deck) == 13 * 4 + 8
  end

  test "draw cards" do
    deck = Deck.new()
    {cards, deck} = Deck.draw(deck, 4)
    assert length(cards) == 4
  end

  test "draw from empty deck" do
    deck = []
    assert :empty == Deck.draw(deck)
  end
end
