class CreateCostMenus < ActiveRecord::Migration
  def change
    create_table :cost_menus do |t|

      t.timestamps
    end
  end
end
