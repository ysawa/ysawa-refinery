Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :works do
    resources :works, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :works, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :works, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
