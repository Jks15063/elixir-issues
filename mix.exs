defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [
      app:             :issues,
      escript:         escript_config,
      version:         "0.0.1",
      name:            "Issues",
      source_url:      "git@github.com:Jks15063/elixir-issues.git",
      build_embedded:  Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps:            deps()
    ]
  end

  # Configuration for the OTP application
  def application do
    [
      applications: [ :logger, :httpoison ]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 0.9"},
      {:poison,    "~> 2.2"},
      {:ex_doc,    "~> 0.12"},
      {:earmark,   "~> 1.0",   override: true}
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI ]
  end
end
