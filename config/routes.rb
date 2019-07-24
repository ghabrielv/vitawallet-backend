Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    get 'fee', action: :show, controller: 'fees'
    post 'transaction', action: :create, controller: 'transactions'
  end
end
