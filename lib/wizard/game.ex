defmodule Wizard.Game do
  @moduledoc """
  Implements the game logic.
  """

  alias __MODULE__
  alias Wizard.Game.{Player, Deck, Card}

  defstruct(
    players: [],
    number_players: 0,
    round: 0,
    current_trump: nil,
    current_player: -1,
    last_started_player: -1,
    middle_cards: [],
    deck: [],
    score: %{}
  )

  @type action :: :lay_card | :select_trump

  def new(num) when num < 3 or num > 5 do
    raise "Game is for three to five players only."
  end

  def new(number_players) when is_number(number_players) do
    players =
      for i <- 0..(number_players - 1) do
        Player.new(i, "Player_" <> to_string(i))
      end

    %Game{
      players: players,
      number_players: number_players,
      round: 1
    }
  end

  def start_next_round(game) do
    game
    |> mish_deck
    |> increase_round
    |> update_current_player
    |> deal_cards
    |> draw_new_trump
  end

  def mish_deck(game) do
    %Game{game | deck: Deck.new()}
  end

  defp increase_round(game), do: %Game{game | round: game.round + 1}

  def deal_cards(game) do
    round = game.round
    number_players = game.number_players
    {cards, deck} = Deck.draw(game.deck, number_players * round)

    player_cards_tuple =
      cards
      |> Enum.chunk_every(round)
      |> Enum.zip(game.players)

    players =
      for {cards, player} <- player_cards_tuple do
        Player.set_cards(player, cards)
      end

    %Game{game | players: players, deck: deck}
  end

  def update_current_player(game) do
    last = game.last_started_player

    if last == game.number_players - 1 do
      %Game{game | current_player: 0, last_started_player: 0}
    else
      %Game{game | current_player: last + 1, last_started_player: last + 1}
    end
  end

  def draw_new_trump(game) do
    case Deck.draw(game.deck, 1) do
      {trump, deck} ->
        %Game{game | current_trump: trump, deck: deck}

      _ ->
        # TODO: last round, there is no trump
        %Game{game | current_trump: Card.fool()}
    end
  end
end
