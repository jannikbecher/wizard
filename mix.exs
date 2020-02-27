defmodule Wizard.MixProject do
  use Mix.Project

  def project do
    [
      app: :wizard,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:doctor, "~> 0.11.0"},
      {:credo, "~> 1.2", only: [:dev, :test], runtime: false},
      {:git_hooks, "~> 0.4.1", only: [:dev, :test], runtime: false}
    ]
  end
end
