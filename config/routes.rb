Rails.application.routes.draw do
   resources :categories, only:[:show]
   resources :ads, only:[:show, :new, :create]
   resources :users, only:[:show]
  root "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
