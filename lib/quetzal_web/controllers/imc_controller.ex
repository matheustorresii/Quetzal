defmodule QuetzalWeb.IMCController do
  use QuetzalWeb, :controller

  alias Quetzal.IMC

  def index(conn, params) do
    params
    |> IMC.calculate()
    |> handle_response(conn)
  end

  defp handle_response({:ok, result}, conn), do: render_response(conn, result, :ok)

  defp handle_response({:error, result}, conn), do: render_response(conn, result, :bed_request)

  defp render_response(conn, result, status) do
    conn
    |> put_status(status)
    |> json(%{result: result})
  end
end
