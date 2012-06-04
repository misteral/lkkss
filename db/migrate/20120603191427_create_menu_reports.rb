class CreateMenuReports < ActiveRecord::Migration
  def change
    create_table :menu_reports do |t|
      t.string :name

      t.timestamps
    end
  end
end
