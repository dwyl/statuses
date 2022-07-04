defmodule Statuses do
  @moduledoc """
  Documentation for `Statuses`.
  """

  @doc """
  `parse_json/0` returns a list of maps containing statuses. <br />

  The format returned is:
  ```elixir
  [
    %{
      id: "1",
      text: "verified"
    },
    ...
  ]
  ```
  All statuses MUST have an `id` and `text` field. <br />
  Ideally they should also have a `desc` (description), <br />
  please help to expand/verify others. <br />
  """
  def parse_json do
    {:ok, cwd} = File.cwd
    # we need this cd to locate the file in /deps
    case cwd =~ "/statuses" do
      true ->
        read_decode()
      # coveralls-ignore-start
      false -> # temporarily cd into deps/quotes dir and read quotes.json file:
        File.cd!("deps/statuses")
        data = read_decode()
        # chnge back into the root directory
        File.cd!("../..")
        data # return the decoded (parsed) JSON data
      # coveralls-ignore-stop
    end
  end

  defp read_decode do
    File.read!("statuses.json") 
    |> Jason.decode!() 
    |> Enum.map(fn(m) -> Useful.atomize_map_keys(m) end)
  end
end
