Eventsys::Application.routes.draw do
  resources :categories
  devise_for :users

   root :to => 'categories#index'
end
