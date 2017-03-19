defmodule Esalud01 do
  use Esalud01.Web, :model 

  schema "phisicians" do
  	field :name, :string
  	timestamps 
  	belongs_to :esalud01, physician.esalud01
  end
end