Samplecms::Application.routes.draw do
  get "testimonial/index"

  get "testimonial/new"

  get "testimonial/edit"

  get "white_paper/index"

  get "white_paper/new"

  get "white_paper/edit"
  
  get "static/site_map"

  get "category/index"

  get "category/edit"

  get "category/show"

  get "category/new"

  get "article/index"

  get "cmsfile/index"

  get "administration/index"

  get "settings/index"

  get "home/index"

  get "user_sessions/new"
  resources :user_sessions
  root :to => 'home#index'

  #RSS Feeds
  match 'article'=> "article#index"
  match 'rss_article_feed' => "article#rss_feed"
  match 'page'=> "page#index"
  match 'rss_page_feed' => "page#rss_feed"

  match 'administration' => "administration#index", :as => :administration
  match 'page' => "page#index", :as => :page

  match 'home' => "home#index", :as => :home
  match 'login' => "user_sessions#new",      :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
  match 'settings' => "settings#index", :as => :settings
  match 'setting_create' => "settings#create", :as => 'setting_create'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
end
