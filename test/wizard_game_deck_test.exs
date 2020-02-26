defmodule WizardGameDeckTest do
  use ExUnit.Case

  alias Wizard.Game.Deck

  test "create new random deck" do
    deck = Deck.new()
    assert length(deck) == 13 * 4 + 8
  end
end
