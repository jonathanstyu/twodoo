Twodoo::Application.routes.draw do
  resources :projects do 
    resources :items, :only => [:new, :create]
  end
  
  resources :items, :only => [:show, :destroy, :update, :edit]
  resources :teams
end
