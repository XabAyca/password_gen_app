defmodule PasswordGenerator do
  @moduledoc """
  PasswordGenerator keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  @password_lengths [
    Weak: Enum.map(6..15, & &1),
    Strong: Enum.map(16..88, & &1),
    Unbelievable: [100, 150]
  ]
  def password_lengths, do: @password_lengths
end
