RailsStripeMembershipSaas::Application.routes.draw do


  resources :cgvs 

  get 'cgv', :to => 'cgvs#index'
  
  get 'cgu', :to => 'cgus#index'
  get 'cgu/new', :to => 'cgus#new'
  get 'cgu/edit', :to => 'cgus#edit'

  get 'faq', :to => 'questions#index'

  resources :questions


  resources :good


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