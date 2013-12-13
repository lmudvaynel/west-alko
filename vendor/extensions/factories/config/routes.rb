Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :factories do
    resources :factories, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :factories, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :factories, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
