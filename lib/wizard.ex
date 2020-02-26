defmodule Wizard do
  @moduledoc """
  Main API for Wizard applicatoin.
  """

  @doc """
  Create a new Wizard game.

  ## Examples

      iex> game = Wizard.new_game(3)
      :ok
  """
  def new_game(number) do
    :ok
  end

  @doc """
  Make a move for the current player.
  """
  def action(game, action)

  @doc """
  Returns all legal moves.
  """
  def get_actions(game)

  @doc """
  Returns the hand cards of the given player.
  """
  def get_player_cards(game, player)

  @doc """
  Returns the last trick of the game.
  """
  def get_last_trick(game)

  @doc """
  Returns the current player.
  """
  def get_current_player(game)

  @doc """
  Returns the score of the game.
  """
  def get_score(game)
end
