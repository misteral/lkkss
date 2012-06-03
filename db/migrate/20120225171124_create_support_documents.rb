class CreateSupportDocuments < ActiveRecord::Migration
  def change
    create_table :support_documents do |t|
      t.string :name
      t.string :name_product
      t.datetime :date_issue

      t.timestamps
    end
  end
end
