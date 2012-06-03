class Akt < ActiveRecord::Base
  belongs_to :zavod
  belongs_to :tipdef
  belongs_to :ntrub
  belongs_to :konstr  
end
