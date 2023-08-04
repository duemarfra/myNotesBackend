Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :notes do
        member do
          patch "toggle_archive"
        end
      end
    end
  end
end
