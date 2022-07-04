defmodule Statuses do
  @moduledoc """
  Documentation for `Statuses`.
  """

  @doc """
  `parse_json` returns a list of maps containing quotes. <br />

  The format returned is:
  ```elixir
  [
    %{
      "author" => "Albert Einstein",
      "text" => "Once we accept our limits, we go beyond them."
    },
    %{
      "author" => "Peter Drucker",
      "source" => "https://www.goodreads.com/quotes/784267",
      "tags" => "time, management",
      "text" => "Until we can manage time, we can manage nothing else."
    }
    %{...},
    ...
  ]
  ```
  All quotes MUST have an `author` and `text` field. <br />
  Some quotes have `tags` and `source`,
  please help to expand/verify others. <br />
  see: https://github.com/nelsonic/quotes#contributing
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
