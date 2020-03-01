defmodule Maths.Native do
  use Rustler, otp_app: :maths

  def add(_, _), do: error()
  def sub(_, _), do: error()
  def mul(_, _), do: error()
  def div(_, _), do: error()

  defp error, do: :erlang.nif_error(:nif_not_loaded)
end
