Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :ads
  end
end
