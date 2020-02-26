defmodule WizardTest do
  use ExUnit.Case
  doctest Wizard

  test "create new game with three players" do
    game = Wizard.new_game(3)
    assert game == :ok
  end
end
