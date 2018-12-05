Rails.application.routes.draw do
   resources :categories, only:[:show]
   resources :ads, only:[:show, :new, :create]
   resources :users, only:[:show, :new, :create]
   resources :comments, only:[:new, :create]
   post "/search", to: "ads#search"
   get "/login", to: "sessions#new"
   post "/login", to: "sessions#create"
   delete "/logout", to: "sessions#destroy"
  root "categories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
