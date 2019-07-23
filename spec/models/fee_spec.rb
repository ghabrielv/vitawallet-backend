require 'rails_helper'

RSpec.describe Fee, type: :model do

  it "are valid the two fee" do
    fee = Fee.new(btc_buy: 10239.30, btc_sell: 9878.58)
    fee_two = Fee.new(btc_buy: 9878.58, btc_sell: 10239.30)

    expect(fee).to be_valid
    expect(fee_two).to be_valid
  end

  it "is invalid btc_buy" do
    fee = Fee.new(btc_buy: nil)
    fee.valid?
    expect(fee.errors[:btc_buy]).to include("can't be blank")
  end

  it "is invalid btc_sell" do
    fee = Fee.new(btc_sell: nil)
    fee.valid?
    expect(fee.errors[:btc_sell]).to include("can't be blank")
  end

  it "is invalid btc_buy and btc_sell" do
    fee = Fee.new(btc_buy: nil, btc_sell: nil)
    fee.valid?
    expect(fee.errors[:btc_buy]).to include("can't be blank")
    expect(fee.errors[:btc_sell]).to include("can't be blank")
  end

  it "is invalid btc_buy and is valid btc_sell" do
    fee = Fee.new(btc_buy: nil, btc_sell: 1000)
    fee.valid?
    expect(fee.errors[:btc_buy]).to include("can't be blank")
    expect(fee.btc_sell).to be >= 0
  end

  it "is invalid btc_sell and is valid btc_buy" do
    fee = Fee.new(btc_buy: 1000, btc_sell: nil)
    fee.valid?
    expect(fee.btc_buy).to be >= 0
    expect(fee.errors[:btc_sell]).to include("can't be blank")
  end

end
