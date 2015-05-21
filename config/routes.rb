Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => :registrations }
  root "page#index"
  resources :tasks

end
