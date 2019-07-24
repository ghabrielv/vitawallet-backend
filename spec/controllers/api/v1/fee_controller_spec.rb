RSpec.describe Fee, api: true, type: :request do
    include ApiDoc::V1::Fees::Api

    describe "GET /api/fee" do
        include ApiDoc::V1::Fees::Show
    
        it "Get fee", :dox do
          get "/api/fee"
          expect(response).to have_http_status(:success)
        end
    end

end
