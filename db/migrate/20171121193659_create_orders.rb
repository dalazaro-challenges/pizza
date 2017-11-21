class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.datetime :pickup
      t.string :size
      t.string :type
      t.boolean :ready

      t.timestamps
    end
  end
end
