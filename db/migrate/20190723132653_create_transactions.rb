class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :currency_send
      t.string :currency_receive
      t.decimal :amount

      t.timestamps
    end
  end
end
