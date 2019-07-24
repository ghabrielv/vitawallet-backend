module ApiDoc
  module V1
    module Transactions
      extend Dox::DSL::Syntax

      document :api do
        resource 'Transactions' do
          endpoint '/api/transaction'
          group 'Transactions'
        end

        group 'Transactions' do
          desc 'Transactions group'
        end
      end

      document :create do
        action 'Create transaction'
      end

    end
  end
end