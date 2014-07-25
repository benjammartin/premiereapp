RailsStripeMembershipSaas::Application.routes.draw do



  resources :chapitres


resources :cgus 
  resources :cgvs 

  get 'cgv', :to => 'home#cgv', as: :thecgv
  
  get 'cgu', :to => 'home#cgu', as: :thecgu

  get 'faq', :to => 'home#faq', as: :thefaq

  get 'programme', :to => 'home#programme', as: :theprogramme

  

  resources :questions


  resources :good


  resources :installations


  resources :steps


  resources :topics


  resources :courses

  
  resources :content

  mount StripeEvent::Engine => '/process' # provide a custom path

 
 
  authenticated :user do
    root :to => 'courses#index'
  end
  root :to => "home#index"
  devise_for :users, :controllers => { :registrations => 'registrations' }
  devise_scope :user do
    put 'update_plan', :to => 'registrations#update_plan'
    put 'update_card', :to => 'registrations#update_card'
  end
  resources :users
end