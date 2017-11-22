class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :pickup
      t.string :size
      t.string :toppings
      t.boolean :ready

      t.timestamps
    end
  end
end
