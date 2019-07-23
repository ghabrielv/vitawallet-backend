class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|
      t.decimal :btc_buy
      t.decimal :btc_sell

    end
  end
end
