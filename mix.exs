defmodule Helpdesk.MixProject do
  use Mix.Project

  def project do
    [
      app: :helpdesk,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      consolidate_protocols: Mix.env() != :dev,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Helpdesk.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:picosat_elixir, "~> 0.2"},
      {:ash, "~> 3.0"},
      {:igniter, "~> 0.3"},
      {:ash_postgres, "~> 2.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
