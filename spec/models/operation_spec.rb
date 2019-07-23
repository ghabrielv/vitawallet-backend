require 'rails_helper'

RSpec.describe Operation, type: :model do
  
  it "is invalid amount" do
    operation = Operation.new(amount: nil, fee: Float(0), commission: Integer(0), total: Float(0.00), currency_receive: 'btc')
    operation.valid?
    expect(operation.errors[:amount]).to include("can't be blank")
  end

  it "is invalid fee" do
    operation = Operation.new(amount: Float(0), fee: nil, commission: Integer(0), total: Float(0.00), currency_receive: 'btc')
    operation.valid?
    expect(operation.errors[:fee]).to include("can't be blank")
  end

  it "is invalid commission" do
    operation = Operation.new(amount: Float(0), fee: Float(0), commission: nil, total: Float(0.00), currency_receive: 'btc')
    operation.valid?
    expect(operation.errors[:commission]).to include("can't be blank")
  end

  it "is invalid total" do
    operation = Operation.new(amount: Float(0), fee: Float(0), commission: Integer(0), total: nil, currency_receive: 'btc')
    operation.valid?
    expect(operation.errors[:total]).to include("can't be blank")
  end

  it "is invalid currency_receive" do
    operation = Operation.new(amount: Float(0), fee: Float(0), commission: Integer(0), total: Float(0.00), currency_receive: nil)
    operation.valid?
    expect(operation.errors[:currency_receive]).to include("can't be blank")
  end

  it "are invalid the inputs" do
    operation = Operation.new(amount: nil, fee: nil, commission: nil, total: nil, currency_receive: nil)
    operation.valid?
    expect(operation.errors[:amount]).to include("can't be blank")
    expect(operation.errors[:fee]).to include("can't be blank")
    expect(operation.errors[:commission]).to include("can't be blank")
    expect(operation.errors[:total]).to include("can't be blank")
    expect(operation.errors[:currency_receive]).to include("can't be blank")
  end

  it "are valid the inputs" do
    operation = Operation.new(amount: Float(0), fee: Float(0), commission: Integer(0), total: Float(0.00), currency_receive: 'btc')
    expect(operation).to be_valid
  end

end
