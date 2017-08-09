Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products

  root to: 'store#index', as: 'store'

  resources :line_items do
    put 'decrement', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
