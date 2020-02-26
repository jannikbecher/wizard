defmodule WizardGamePlayerTest do
  use ExUnit.Case

  alias Wizard.Game.Player

  test "create new player" do
    player = Player.new("Rudolf")
    assert player.name ==  "Rudolf"
  end
end
