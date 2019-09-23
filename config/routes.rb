Rails.application.routes.draw do
  devise_for :users
    resources :posts 
    resources :welcome, :only => [:index]
    root "welcome#index"
     resources :users, :only => [:show, :index, :edit, :update]
     resources :messages, :only => [:create]
     resources :rooms, :only => [:create, :show, :index, :edit, :update]
  end
