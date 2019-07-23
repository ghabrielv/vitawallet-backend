class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.decimal :amount
      t.float :fee
      t.float :commission
      t.float :total
      t.string :currency_receive

      t.timestamps
    end
  end
end
