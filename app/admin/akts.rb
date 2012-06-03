ActiveAdmin.register Akt do
  index do
    column "Data", :data_akt
    column :num_trub_oip
    column :num_trub
    column :zavod
    column :konstr
    column :tipdef
    column :ntrub
  end

end
