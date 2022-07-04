defmodule Statuses.MixProject do
  use Mix.Project

  def project do
    [
      app: :statuses,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.json": :test,
      ]
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
      # Parse JSON file: github.com/michalmuskala/jason
      {:jason, "~> 1.1"},

      # https://github.com/dwyl/useful#atomize_map_keys1
      {:useful, "~> 1.0.8"},

      # Create docs for publishing Hex.docs: github.com/elixir-lang/ex_doc
      {:ex_doc, "~> 0.28", only: :dev, runtime: false},

      # Check test coverage: github.com/parroty/excoveralls
      {:excoveralls, "~> 0.14.3", only: :test},
    ]
  end

    defp description() do
    "a collection of inspiring statuses and methods to return them."
  end

  defp package() do
    [
      files: ["lib/statuses.ex", "mix.exs", "README.md", "statuses.json"],
      name: "statuses",
      licenses: ["GNU GPL v2.0"],
      maintainers: ["dwyl"],
      links: %{"GitHub" => "https://github.com/dwyl/statuses"}
    ]
  end
end