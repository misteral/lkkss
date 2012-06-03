class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.datetime :date_issue
      t.string :magnetic
      t.datetime :application_isolation
      t.datetime :date_shipment
      t.integer :sizes_pipe_id
      t.integer :manufactur_id
      t.integer :conclusion_id
      t.integer :installation_site_id
      t.integer :gost_id
      t.integer :ty_id
      t.integer :represent_host_id
      t.integer :represent_trans_id
      t.integer :instrumetnation_id
      t.integer :delegate_id
      t.integer :result_id
      t.integer :support_document_id

      t.timestamps
    end
  end
end
