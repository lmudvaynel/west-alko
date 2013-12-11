Refinery::Core::Engine.routes.draw do

  # Admin routes
  namespace :volumes, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :volumes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
