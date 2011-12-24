DoneLy::Application.routes.draw do

  get "home/index"

  # get "posts/index"
  # get "posts/show"
  # get "posts/new"
  # get "posts/create"
  # get "posts/update"
  # get "posts/delete"

  devise_for :users #, :controllers => { :registrations => "users/registrations" }

  resources :teams do
    member do
      post :join
    end
  end
  resources :users, :only => :show
  resources :posts
  resources :votes
  resources :invites, :only => :show    
 

  root :to => "home#index"
end
