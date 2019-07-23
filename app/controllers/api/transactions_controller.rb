module Api
    class TransactionsController < ApplicationController
        def create
            @fee = Fee.find(1)
            @transaction = Transaction.new(transaction_params)
            @operation = Operation.new(amount: @transaction.amount, fee: Float(0), commission: Integer(0), total: Float(@transaction.amount / @fee.btc_buy), currency_receive: 'btc')
        
            if @operation.save and @transaction.save
              render json: {data: {id: Integer(@transaction.id), amount: Float(@transaction.amount), fee: @operation.fee, commission: @operation.commission, total: @operation.total, currency_receive: @operation.currency_receive, created_at: @transaction.created_at}, type: 'transactions'}
            else
              render json: @transaction.errors, status: :unprocessable_entity
            end
        end

        private
        def transaction_params
            params.require(:transaction).permit(:currency_send, :currency_receive, :amount)
        end
    end
end