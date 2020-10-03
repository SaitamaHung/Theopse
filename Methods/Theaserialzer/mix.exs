defmodule Theaserialzer.MixProject do
  use Mix.Project

  def project do
    [
      app: :theaserialzer,
      version: "0.1.0",
      elixir: "~> 1.10",
      # We reckon that Full-Name directory is better than Abbreviated-Name directory.
      # If it's not a good decision, tell us about that.
      # Anyway, you can directly and simply change directory's name.
      # By the way, in *nix environment, it's no matter between the upper letter and the lower.
      elixirc_paths: ["lib", "Library"],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      build_embedded: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Theopse Serializer",
      source_url: "https://github.com/Theopse/Theopse/tree/Development/Methods/Theaserialzer"
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description() do
    "A Serializer From Theopse Organization"
  end

  defp package() do
    [
      organization: "Theopse Organization",
      licences: ["The Unlicense"],
      files: ~w(Library priv .formatter.exs mix.exs README* readme* LICENSE*
								license* CHANGELOG* changelog*),
      links: %{
        "GitHub" => "https://github.com/Theopse/Theopse/tree/Development/Methods/Theaserialzer"
      }
    ]
  end
end
