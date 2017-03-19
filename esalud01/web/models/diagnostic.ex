defmodule Esalud01 do
  use Esalud01.Web, :model 

  schema "diagnostic" do
  	field :condition, :string
  	field :sintoms,   :string 
  	field :cdcondition, :string 
  	belongs_to :esalud01, diagnostic.esalud01
  	
  	timestamps 
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