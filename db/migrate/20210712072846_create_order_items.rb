class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :order, null: false, foreign_key: true
      t.decimal :total
      t.decimal :unit_price
      t.string  :orderable_type
      t.bigint :orderable_id

      t.timestamps
    end
  end
end
