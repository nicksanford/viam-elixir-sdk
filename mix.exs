defmodule Helloworld.Mixfile do
  use Mix.Project

  def project do
    [
      app: :helloworld,
      version: "0.1.0",
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [mod: {HelloworldApp, []}, applications: [:logger, :grpc, :grpc_reflection]]
  end

  defp deps do
    [
      {:grpc, git: "git@github.com:nicksanford/grpc.git", tag: "master"},
      {:grpc_reflection, git: "git@github.com:nicksanford/grpc-reflection.git", tag: "main"},
      {:jason, "~> 1.4"}
    ]
  end
end
