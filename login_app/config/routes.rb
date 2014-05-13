LoginApp::Application.routes.draw do

#resources :logins 

match '/logins/index', to: 'logins#index', as: 'login_index', :via => [:get,:post]
match '/logins/login', to: 'logins#login', as: 'login_login', :via => [:get,:post]
match '/logins/create', to: 'logins#create', as: 'login_create', :via => [:post,:get]
match 'logins/operation', to: 'logins#operation', :via=> :post
match '/logins/success', to: 'logins#success', :via=> :get
match '/logins/failure', to: 'logins#failure', :via=> :get
match '/logins/persist', to: 'logins#persist', :via=> :post


=begin
#resources :logins 
 #get "logins/index"
  match "logins/index" => "logins#index", :as => :index , :via => [:get, :post]
  #get "logins/create"
  match "logins/create" => "logins#create", :as => :create ,:via => :get
  #match "logins/clicked" => "logins#clicked", :as => :clicked, :via => [:get, :post]
  get "logins/clicked", to: "logins#clicked"
  #get "logins/buttons" => "logins#buttons"

=begin
  resources :logins do
  collection do
    get 'index'
  end
end

#match "logins/create" => "logins#create", :as => :create ,:via => [:post, :get]
get 'logins/:create', to: 'logins#create', :as => :create


#resources :logins
=begin resources :logins, only: [:clicked,:create] do
    collection do
		get :index
    end
	end
=end
=begin	resources :logins do
		post :clicked, on: :collection
	end
=end	
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
