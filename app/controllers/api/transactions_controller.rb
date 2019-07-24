module Api
    class TransactionsController < ApplicationController
        def create
          service = ::TransactionsService.new()
          render json: service.createTransaction(transaction_params)
        end

        private
        def transaction_params
            params.require(:transaction).permit(:currency_send, :currency_receive, :amount)
        end
    end
end