Eventsys::Application.routes.draw do
  resources :categories, :only => :index do
    resources :pictures, :only => [:index,:show], :path => ""
  end

  devise_for :users
  get '/pictures', :to => 'pictures#all_pic', :as => :all_pic
  get '/like/:id', :to => 'pictures#like', :as => :like
  root :to => redirect('/categories')
end
