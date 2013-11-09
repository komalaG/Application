Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "resumes/index"

  get "resumes/new"

  get "resumes/create"

  get "resumes/destroy"

  resources :profiles


  match '/calendar(/:year(/:month))' => 'calendar#index', :as => :calendar, :constraints => {:year => /\d{4}/, :month => /\d{1,2}/}

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  #CarrierWaveExample::Application.routes.draw do
  
  #resources :profiles, only: [:index, :new, :create, :destroy]
#  root "resumes#index"
#end
end