Rails.application.routes.draw do
  get 'cards/show'
  resources :products
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  root 'shops#index'
  resources :carts
  resources :order_items
  resource :cards, only:[:show]
  resources :shops, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
