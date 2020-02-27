defmodule WizardGameTest do
  use ExUnit.Case

  alias Wizard.Game

  test "create a new game with three players" do
    game = Game.new(3)
    assert hd(game.players).name == "Player_0"
  end

  test "create a new game with wrong number of players" do
    assert_raise RuntimeError, fn -> Game.new(2) end
    assert_raise RuntimeError, fn -> Game.new(8) end
  end

  test "start_next_round functionality" do
    game =
    Game.new(5)
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round
    |> Game.start_next_round

    assert game.round == 12
    assert hd(game.players).cards |> length == 12
  end
end
