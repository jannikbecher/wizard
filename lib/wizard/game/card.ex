defmodule Wizard.Game.Card do
  @moduledoc false

  alias __MODULE__

  defstruct(
    type: :normal,
    value: 0,
    color: nil
  )

  @type t :: %Card{
    type: :normal | :fool | :wizard,
    value: 0..13 | nil,
    color: :red | :green | :blue | :yellow | nil
  }
end
