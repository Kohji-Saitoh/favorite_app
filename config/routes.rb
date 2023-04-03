Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'spots#index'
  
  resources :spots do               #こちらの２行を追加
    resource :likes, only: [:create, :destroy] 
 end
end
