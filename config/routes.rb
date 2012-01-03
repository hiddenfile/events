Eventsys::Application.routes.draw do
  resources :comments, :only => :index

  resources :categories, :only => :index do
    resources :pictures, :only => [:index,:show], :path => "" do
      resources :comments, :only => :create
    end
  end

  devise_for :users
  get '/pictures', :to => 'pictures#all_pic', :as => :all_pic
  get '/like/:id', :to => 'pictures#like', :as => :like
  root :to => redirect('/categories')
end
