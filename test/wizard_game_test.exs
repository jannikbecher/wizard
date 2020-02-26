defmodule WizardGameTest do
  use ExUnit.Case

  test "create a new game" do
    game = Wizard.Game.new(3)
    assert game == :ok
  end
end
