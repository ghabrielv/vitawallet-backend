class TransactionsService < PowerTypes::Service.new()
  def createTransaction(transaction_params)
    response = {}
    @fee = Fee.last
    @transaction = Transaction.new(transaction_params)

    if @transaction.currency_send == 'usd' and @transaction.currency_receive == 'btc'
      @operation = Operation.new(amount: @transaction.amount, fee: Float(@fee.btc_buy), commission: Integer(0), total: Float(@transaction.amount / @fee.btc_buy), currency_receive: 'btc')
    else
      @operation = Operation.new(amount: @transaction.amount, fee: Float(@fee.btc_sell), commission: Integer(0), total: Float(@transaction.amount / @fee.btc_sell), currency_receive: 'usd')
    end
        
    if @operation.save and @transaction.save
      response = { data: {id: Integer(@transaction.id), amount: Float(@transaction.amount), fee: @operation.fee, commission: @operation.commission, total: @operation.total, currency_receive: @operation.currency_receive, created_at: @transaction.created_at}, type: 'transactions' }
    else
      response = { errors: @transaction.errors, status: :unprocessable_entity }
    end
  end
end
