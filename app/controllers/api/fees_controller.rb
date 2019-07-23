module Api
    class FeesController < ApplicationController
        def show
            @fee = Fee.find(1)
            
            render json: {btc_buy: Float(@fee.btc_buy), btc_sell: Float(@fee.btc_sell.to_f)}
            
        end
    end
end