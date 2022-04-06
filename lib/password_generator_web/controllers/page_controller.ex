defmodule PasswordGeneratorWeb.PageController do
  use PasswordGeneratorWeb, :controller

  def index(conn, _params) do
    lengths = PasswordGenerator.password_lengths

    conn
      |> assign(:password_lengths, lengths)
      |> assign(:password, "")
      |> render("index.html")
  end

  def generate(conn, %{"password" => password_params}) do
    lengths = PasswordGenerator.password_lengths
    {:ok, password} = PassGenerator.generate(password_params)

    conn
      |> assign(:password_lengths, lengths)
      |> assign(:password, password)
      |> render("index.html")
  end
end
