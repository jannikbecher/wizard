defmodule Wizard do
  @moduledoc """
  Main API for Wizard applicatoin.
  """

  @doc """
  Create a new Wizard game.

  ## Examples

      iex> _game = Wizard.new_game(3)
      :ok
  """
  def new_game(_number) do
    :ok
  end

  @doc """
  Make a move for the current player.
  """
  def action(_game, _action) do
    nil
  end

  @doc """
  Returns all legal moves.
  """
  def get_actions(_game) do
    nil
  end

  @doc """
  Returns the hand cards of the given player.
  """
  def get_player_cards(_game, _player) do
    nil
  end

  @doc """
  Returns the last trick of the game.
  """
  def get_last_trick(_game) do
    nil
  end

  @doc """
  Returns the current player.
  """
  def get_current_player(_game) do
    nil
  end

  @doc """
  Returns the score of the game.
  """
  def get_score(_game) do
    nil
  end
end
