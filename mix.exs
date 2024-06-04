defmodule Helper.MixProject do
  use Mix.Project

  @version "0.1.8"

  def project do
    [
      app: :helper,
      version: @version,
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, ">= 0.0.0"},
      {:plug, ">= 0.0.0"},
      {:ecto_sql, ">= 0.0.0"}
      # {:gettext, ">= 0.0.0"},
      # {:timex, ">= 0.0.0"},

      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  def version, do: @version
end
