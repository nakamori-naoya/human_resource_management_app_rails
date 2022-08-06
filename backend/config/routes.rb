Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'EmailAuth', at: 'auth'
      as :email_auth do
        # Define routes for EmailAuth within this block.
      end
    end
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
