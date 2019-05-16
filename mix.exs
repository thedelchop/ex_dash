defmodule ExDash.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_dash,
     version: "0.1.8",
     elixir: "~> 1.8",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/thedelchop/ex_dash",
     deps: deps(),
     package: package(),
     description: description(),
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, "0.19.2"},
      {:floki, "~> 0.21.0"},
      {:mochiweb, "~> 2.18"},
      {:cortex, "~> 0.5.0"}
    ]
  end

  defp description do
    """
    ExDash builds a Dash Docset with your local Elixir app.
    """
  end

  defp package do
    [
     maintainers: ["Russell Matney", "Joseph DelCioppio"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/thedelchop/ex_dash"}
    ]
  end
end
