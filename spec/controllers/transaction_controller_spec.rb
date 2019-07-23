require 'rails_helper'

RSpec.describe Transaction, type: :request do

    describe "POST /api/transactions" do
        before do
            new_transaction = { currency_send: 'usd', currency_receive: 'btc', amount: 6984.89 }
            post "/api/transactions", params: { transaction: new_transaction }
        end
    
        it "detail success" do
          expect(response).to have_http_status(:success)
        end
    end

end
