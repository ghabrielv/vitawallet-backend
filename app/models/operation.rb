class Operation < ApplicationRecord
    validates :amount, presence: true, numericality: true
    validates :fee, presence: true, numericality: true
    validates :commission, presence: true, numericality: true
    validates :total, presence: true, numericality: true
    validates :currency_receive, presence: true, format: {with: /[a-zA-Z]/}
end
