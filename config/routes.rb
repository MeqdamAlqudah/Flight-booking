Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
 
  namespace :api do
    namespace :v1 do    
      resources :users
      resources :cars      
      resources :appointment
    end
  end

end
