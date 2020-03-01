defmodule Maths.MixProject do
  use Mix.Project

  def project do
    [
      app: :maths,
      compilers: [:rustler] ++ Mix.compilers(),
      deps: deps(),
      elixir: "~> 1.9",
      rustler_crates: [maths: []],
      start_permanent: Mix.env() == :prod,
      version: "0.1.0"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, github: "rusterlium/rustler", sparse: "rustler_mix"}
    ]
  end
end
