Rails.application.routes.draw do
  resources :sub_categories
  devise_for :users
  get 'get_sub_category_by_category/:category_id', to: 'homeworks#get_sub_category_by_category'
  resources :homeworks
  resources :categories
  root "homeworks#index"  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
