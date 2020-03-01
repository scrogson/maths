defmodule Maths do
  @moduledoc """
  Documentation for Maths.
  """

  @doc """
  Adds two numbers.

  ## Examples
      iex> Maths.add(1, 2)
      3
  """
  defdelegate add(a, b), to: Maths.Native

  @doc """
  Subtracts two numbers.

  ## Examples
      iex> Maths.sub(1, 2)
      -1
  """
  defdelegate sub(a, b), to: Maths.Native

  @doc """
  Multiplies two numbers.

  ## Examples
      iex> Maths.mul(2, 3)
      6
  """
  defdelegate mul(a, b), to: Maths.Native

  @doc """
  Divides two numbers.

  ## Examples
      iex> Maths.div(10, 2)
      5

      iex> Maths.div(10, 0)
      ** (ErlangError) Erlang error: :nif_panicked
  """
  defdelegate div(a, b), to: Maths.Native
end
