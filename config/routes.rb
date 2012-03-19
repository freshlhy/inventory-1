Inventory::Application.routes.draw do
  
  resources :models

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
  
  match "/scans" => "scans#index"
  
  root :to => 'scans#index'

end
