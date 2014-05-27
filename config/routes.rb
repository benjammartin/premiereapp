RailsStripeMembershipSaas::Application.routes.draw do
  resources :installations


  resources :steps


  resources :topics


  resources :courses

  
  resources :content

  mount StripeEvent::Engine => '/process' # provide a custom path
 
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'update_plan', :to => 'registrations#update_plan'
    put 'update_card', :to => 'registrations#update_card'
  end
  resources :users
end