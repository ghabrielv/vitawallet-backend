module ApiDoc
  module V1
    module Fees
      extend Dox::DSL::Syntax

      document :api do
        resource 'Fees' do
          endpoint '/api/fee'
          group 'Fees'
        end

        group 'Fees' do
          desc 'Fees group'
        end
      end

      document :show do
        action 'Get fee'
      end

    end
  end
end