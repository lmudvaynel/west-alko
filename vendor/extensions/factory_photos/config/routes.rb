Refinery::Core::Engine.routes.draw do

  # Admin routes
  namespace :factory_photos, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :factory_photos, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
