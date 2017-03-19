defmodule Playground.Mixfile do
  use Mix.Project

  @moduledoc false

  def project, do: [
    app: :playground,
    version: "0.1.0",
    elixir: "~> 1.4",
    test_paths: ["lib"],
    build_embedded: Mix.env == :prod,
    start_permanent: Mix.env == :prod,
    deps: deps()
  ]

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application, do: [
    extra_applications: [:logger]
  ]

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps, do: [
    {:credo, "~> 0.6.1"},
    {:benchee, "~> 0.6.0"}
  ]

end
