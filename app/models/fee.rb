class Fee < ApplicationRecord
    validates :btc_buy, presence: true
    validates :btc_sell, presence: true
end
