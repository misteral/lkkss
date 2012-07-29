Lkksswin::Application.routes.draw do

  get "report_gazcontrols/show"
  resources :report_gazcontrols

  get "report_controls/show"
  resources :report_controls

  get "costs/end_price"

  resources :cost_inputs

  resources :cost_menus

  resources :xls

  resources :menu_reports

  devise_for :users

  devise_for :models
  match '/certificates/new' => 'certificates#new'
  resources :costs
  post "certificates/cost"
  post "loadcertifics/new"
  post "data_pipes/new"
  resources :magazines
  get "magazines/show"
  #get "report/index"
  get "journal/index"
  post "journal/index"
  get "journal/link"
  resources :type_pipe_installation_sites
  post "loadcertifics/download"
  post "loadcertifics/undownload"
  get "loadcertifics/download"
  get "loadcertifics/undownload"
  resources :loadcertifics
  get "load/index"
  get "load/rem"
  get "downloads/rem"
  resources :reports
  resources :results
  resources :support_documents
  resources :certificates
  resources :passports
  resources :passport_pipes
  resources :pipes
  resources :installation_sites
  resources :conclusions
  resources :data_pipes
  resources :type_pipes
  resources :documents
  resources :sizes_pipes
  resources :instrumentations
  resources :represent_trans
  resources :represent_hosts
  resources :ties
  resources :gosts
  resources :delegates
  resources :manufacturs
  get "guide/index"
  get "main/index"
  #resources :terras
  #resources :downloads
  #resources :tipdefs
  #resources :zavods
  #resources :ntrubs
  #resources :konstrs
  #resources :akts
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
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


  root :to => 'loadcertifics#new'



  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
