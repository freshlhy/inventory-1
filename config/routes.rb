Inventory::Application.routes.draw do

  resources :categories

  resources :items do
    resources :scans
  end

  resources :manufacturers do 
    resources :models
  end

  resources :sites do
    resources :rooms
  end
  
  root :to => 'items#index'

end
