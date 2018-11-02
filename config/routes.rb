Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
   # Api definition
  namespace 'api' do
    namespace 'v1' do
      # We are going to list our resources here
      resources :users, :only =>  [:index, :show, :create, :update, :destroy]
      resources :sessions, :only => [:create, :destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
