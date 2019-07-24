RSpec.describe Transaction, api: true, type: :request do
    include ApiDoc::V1::Transactions::Api

    describe "POST /api/transaction" do
        include ApiDoc::V1::Transactions::Create

        it "Create transaction", :dox do
          new_transaction = { currency_send: 'usd', currency_receive: 'btc', amount: 6984.89 }
          post "/api/transaction", params: { transaction: new_transaction }
          expect(response).to have_http_status(:success)
        end
    end

end
