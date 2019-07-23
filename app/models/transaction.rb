class Transaction < ApplicationRecord
    validates :currency_send, presence: true, format: {with: /[a-zA-Z]/}
    validates :currency_receive, presence: true, format: {with: /[a-zA-Z]/}
    validates :amount, presence: true, numericality: true
end
