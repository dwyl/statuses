defmodule Statuses do
  @moduledoc """
  The `Statuses` module create a list of
  statuses to be used in Elixir projects
  """

  @doc """
    `parse_json` returns a list of maps containing status information. <br />

    The format returned is:
    ```elixir
    [
      %Status{code: 4, desc: "Items marked as done are complete", text: "done"},
      %Status{
        code: 5,
        desc: "A flagged App, Item or Person requires admin attention",
        text: "flagged"
      },
      %{...},
      ...
    ]
    ```
  """
  defp parse_json do
    {:ok, cwd} = File.cwd

    # we need this `cd` to locate the file in `/deps`
    case cwd =~ "/statuses" do

      true ->
        File.read!("statuses.json")
        |> Jason.decode!()

      # coveralls-ignore-start

      false -> # temporarily `cd` into `deps/quotes` dir and read `quotes.json` file:
        File.cd!("deps/quotes")
        data = File.read!("quotes.json")
        |> Jason.decode!()
        # change back into the root directory
        File.cd!("../..")
        data # return the decoded (parsed) JSON data

      # coveralls-ignore-stop
    end
  end


  @doc """
  Returns list of the statuses.
  """
  @spec get_statuses() :: list(Status.t())
  def get_statuses do
    parse_json()
    |> Enum.map(fn obj -> struct(Status, [code: obj["code"], desc: obj["desc"], text: String.to_atom(obj["text"])]) end)
  end
end
