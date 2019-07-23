Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    get 'fees', action: :show, controller: 'fees'
    post 'transactions', action: :create, controller: 'transactions'
  end
end
