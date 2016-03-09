defmodule BiggestSlacker do

  def sorted(list_of_channels) do
    Enum.sort(list_of_channels, &(&1.num_members > &2.num_members))
  end

end
