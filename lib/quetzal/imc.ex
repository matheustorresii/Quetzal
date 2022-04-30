defmodule Quetzal.IMC do
  def calculate(%{"filename" => filename}) do
    filename
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, data}), do: {:ok, handle_data(data)}

  defp handle_file({:error, _error}), do: {:error, "Error while opening the file"}

  defp handle_data(data) do
    data
    |> String.split("\n")
    #  Enum.map(fn elem -> parse_line(elem) end)
    |> Enum.map(&parse_line/1)
    |> Enum.into(%{})
  end

  defp parse_line(line) do
    line
    |> String.split(",")
    |> List.update_at(1, &String.to_float/1)
    |> List.update_at(2, &String.to_float/1)
    |> calculate_imc()
  end

  defp calculate_imc([name, height, weigth]), do: {name, weigth / (height * height)}
end
