defmodule Theaserialzer do
	@moduledoc """
	Documentation for `Theaserialzer`.
	"""

	@doc """
	Decode.

	## Examples

			iex> Theaserialzer.hello()
			:world

	"""
	def decode(string) do
		string
		|> String.split(",")
		|> Enum.map(fn item ->
			~r/\d+-\d+/
			|> Regex.match?(item)
			|> case do
				false ->
					item
					|> String.to_integer()
				true ->
					~r/-/
					|> Regex.replace(item, "..")
					|> Code.eval_string()
					|> case do
						{value,_} ->
							value
							|> Enum.to_list()
					end
			end
		end)
		|> List.flatten()
	end
end
