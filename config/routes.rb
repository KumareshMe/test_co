Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :admin do
    scope controller: :user_portals, path: 'user_portals', as: 'user_portals' do
      get :index
      match :create, via: %i[get post]
      match :update, via: %i[get patch]
      match :destroy, via: %i[get delete]
    end
  end
end
