class CreateTypePipes < ActiveRecord::Migration
  def change
    create_table :type_pipes do |t|
      t.string :name

      t.timestamps
    end
  end
end
