defmodule Voxbone.MixProject do
  @moduledoc false

  use Mix.Project

  def project do
    [
      app: :voxbone,
      version: "0.1.4",
      elixir: "~> 1.6",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      dialyzer: [
        ignore_warnings: "dialyzer.ignore-warnings"
      ],
      test_coverage: [tool: ExCoveralls],
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    Elixir wrapper for Voxbone API.
    """
  end

  defp package do
    [
      name: :voxbone,
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["airatel Inc.", "Jonatan Männchen"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jshmrtn/ex-voxbone"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, ">= 1.0.0"},
      {:tesla, "~> 0.8"},
      {:exvcr, "~> 0.9", only: :test},
      {:inch_ex, "~> 0.5", only: [:docs]},
      {:hackney, "~> 1.6"},
      {:ex_doc, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.4", only: [:dev, :test], runtime: false},
      {:credo, "~> 0.5", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.4", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      update_client: [
        &update_client/1,
        "format",
        &apply_client_patch/1,
        "format"
      ]
    ]
  end

  defp update_client(_) do
    user = System.get_env("VOXBONE_SWAGGER_USER") || raise "define env VOXBONE_SWAGGER_USER"

    password =
      System.get_env("VOXBONE_SWAGGER_PASSWORD") || raise "define env VOXBONE_SWAGGER_PASSWORD"

    url = System.get_env("VOXBONE_SWAGGER_PATH") || raise "define env VOXBONE_SWAGGER_PATH"
    tmp_dir = System.tmp_dir!()
    swagger_path = Path.join(tmp_dir, "swagger.json")

    try do
      {json, 0} = System.cmd("curl", [url, "-s", "-u", user <> ":" <> password])

      File.write!(swagger_path, json)

      {_, 0} =
        System.cmd("swagger-codegen", [
          "generate",
          "-i",
          swagger_path,
          "-l",
          "elixir",
          "-o",
          ".",
          "--additional-properties",
          "packageName=voxbone",
          "--additional-properties",
          "invokerPackage=Voxbone"
        ])
    after
      File.rm_rf!(tmp_dir)
    end
  end

  defp apply_client_patch(_) do
    {_, 0} = System.cmd("git", ["apply", "fix.patch"])
  end
end
