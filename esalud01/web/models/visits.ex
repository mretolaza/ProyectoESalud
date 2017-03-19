defmodule Esalud01 do
  use Esalud01.Web, :model 

  schema "visits" do
  	field :date, :date
  	timestamps 
  	belongs_to :esalud01, visits.esalud01
  end

   @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:temperature, :sonnar, :meter_id])
    |> validate_required([:temperature, :sonnar, :meter_id])
  end
  
end