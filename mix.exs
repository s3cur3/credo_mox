defmodule CredoMox.MixProject do
  use Mix.Project

  @name "CredoMox"
  @version "0.1.0"
  @source_url "https://github.com/carsdotcom/credo_mox"

  def project do
    [
      app: :credo_mox,
      contributors: contributors(),
      deps: deps(),
      description: description(),
      docs: docs(),
      elixir: "~> 1.14",
      name: @name,
      package: package(),
      source_url: @source_url,
      version: @version
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      name: @name,
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      main: "CredoMox.Checks.UnverifiedMox",
      extras: ["README.md"]
    ]
  end

  def contributors() do
    [
      {"Zack Kayser", "@zkayser"},
      {"Stephanie Lane", "@stelane"}
    ]
  end

  defp description do
    "Credo checks for Mox"
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end
end
