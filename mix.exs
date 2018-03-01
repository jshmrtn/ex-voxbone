defmodule Voxbone.MixProject do
  use Mix.Project

  def project do
    [
      app: :voxbone,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      dialyzer: [
        ignore_warnings: "dialyzer.ignore-warnings"
      ],
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
      {:ex_doc, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.4", only: [:dev, :test], runtime: false},
      {:credo, "~> 0.5", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.4", only: [:dev, :test], runtime: false}
    ]
  end
end
