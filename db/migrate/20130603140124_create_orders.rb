class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_number
      t.belongs_to :customer, index: true
      t.text :notes

      t.timestamps
    end
  end
end
