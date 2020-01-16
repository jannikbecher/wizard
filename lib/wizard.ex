defmodule Wizard do
  @moduledoc """
  Main API for Wizard applicatoin.
  """
  @doc """
  Create a new Wizard game.
  """
  def new_game()

  @doc """
  Returns the hand cards of the player.
  """
  def show_cards(game, player)

  @doc """
  If it's players turn: lay selected card to middle.
  Else return error.
  """
  def lay_card(game, player, card)

  @doc """

  """
  def set_trick(game, player)

  @doc """
  Returns cards in the last trick.
  """
  def show_last_trick(game)

  @doc """
  Returns all legal moves for the player.
  """
  def get_options(game, player)

  @doc """
  Returns the whole score board.
  """
  def get_score(game)

  @doc """
  Retruns current trump color.
  """
  def get_trump(game)
end
