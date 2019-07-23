require 'rails_helper'

RSpec.describe Fee, type: :request do

    describe "GET /api/fees" do
        before do
            get "/api/fees"
        end
    
        it "detail success" do
          expect(response).to have_http_status(:success)
        end
    end

end
