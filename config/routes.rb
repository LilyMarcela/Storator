Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"
  resources :stores do 
    resources :items
    member do
        get :admin_panel
    end    
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
