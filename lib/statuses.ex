defmodule Statuses do
  @moduledoc """
  The `Statuses` module create a list of
  statuses to be used in Elixir projects
  """

  @doc """
  Returns list of the statuses.
  """
  @spec get_statuses() :: list(Status.t())
  def get_statuses do
    parse_json()
    |> Enum.map(fn obj ->
      struct(Status, code: obj["code"], desc: obj["desc"], text: String.to_atom(obj["text"]))
    end)
  end

  defp parse_json do
    {:ok, cwd} = File.cwd()

    # we need this `cd` to locate the file in `/deps`
    case cwd =~ "/statuses" do
      true ->
        File.read!("statuses.json")
        |> Jason.decode!()

      # coveralls-ignore-start

      # temporarily `cd` into `deps/quotes` dir and read `quotes.json` file:
      false ->
        File.cd!("deps/quotes")

        data =
          File.read!("quotes.json")
          |> Jason.decode!()

        # change back into the root directory
        File.cd!("../..")
        # return the decoded (parsed) JSON data
        data

        # coveralls-ignore-stop
    end
  end
end
