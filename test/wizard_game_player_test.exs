defmodule WizardGamePlayerTest do
  use ExUnit.Case

  alias Wizard.Game.Player

  test "create new player" do
    player = Player.new(5)
    assert player.id == 5
  end
end
