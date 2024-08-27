defmodule NotQwerty123.Mixfile do
  use Mix.Project

  @source_url "https://github.com/riverrun/not_qwerty123"
  @version "2.4.1"

  def project do
    [
      app: :not_qwerty123,
      version: @version,
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      name: "NotQwerty123",
      compilers: Mix.compilers(),
      package: package(),
      deps: deps(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto],
      mod: {NotQwerty123, []}
    ]
  end

  defp deps do
    [
      {:gettext, "~> 0.18"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:benchee, "~> 1.0", only: :dev}
    ]
  end

  defp package do
    [
      description: "Library to check password strength and generate random passwords.",
      maintainers: ["David Whitlock"],
      licenses: ["BSD-3-Clause"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      extras: [
        "LICENSE.md": [title: "License"],
        "README.md": [title: "Overview"]
      ],
      main: "readme",
      source_url: @source_url,
      formatters: ["html"]
    ]
  end
end
