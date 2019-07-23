class Fee < ApplicationRecord
    validates :btc_buy, presence: true, numericality: true
    validates :btc_sell, presence: true, numericality: true
end
