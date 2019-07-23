class Transaction < ApplicationRecord
    validates :currency_send, presence: true, allow_blank: false
    validates :currency_receive, presence: true, allow_blank: false
    validates :amount, presence: true, numericality: true
end
