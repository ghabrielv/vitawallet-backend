require 'rails_helper'

RSpec.describe Transaction, type: :model do
  
  it "is invalid currency_send" do
    transaction = Transaction.new(currency_send: nil, currency_receive: 'btc', amount: Float(1000))
    transaction.valid?
    expect(transaction.errors[:currency_send]).to include("can't be blank")
  end

  it "is invalid currency_receive" do
    transaction = Transaction.new(currency_send: 'usd', currency_receive: nil, amount: Float(1000))
    transaction.valid?
    expect(transaction.errors[:currency_receive]).to include("can't be blank")
  end

  it "is invalid amount" do
    transaction = Transaction.new(currency_send: 'usd', currency_receive: 'btc', amount: nil)
    transaction.valid?
    expect(transaction.errors[:amount]).to include("can't be blank")
  end

  it "are invalid the inputs" do
    transaction = Transaction.new(currency_send: nil, currency_receive: nil, amount: nil)
    transaction.valid?
    expect(transaction.errors[:currency_send]).to include("can't be blank")
    expect(transaction.errors[:currency_receive]).to include("can't be blank")
    expect(transaction.errors[:amount]).to include("can't be blank")
  end

  it "are valid the inputs" do
    transaction = Transaction.new(currency_send: 'usd', currency_receive: 'btc', amount: Float(1000))
    expect(transaction).to be_valid
  end

end
