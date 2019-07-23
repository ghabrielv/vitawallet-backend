module Api
    class FeesController < ApplicationController
        def show
            @fee = Fee.last
            
            render json: {btc_buy: Float(@fee.btc_buy), btc_sell: Float(@fee.btc_sell.to_f)}
            
        end
    end
end