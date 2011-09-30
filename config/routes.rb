Bigblockdeals::Application.routes.draw do

  resources :widget_types

  # This is for the Basic pages and their edit pages
  BASIC_CONTROLLERS.each do |f|
      get "#{f.last[:url].to_sym}/(:format)", :controller => "basics", :action => "#{f.first}", :as => f.last[:url]
      get "admin/#{f.last[:url].to_sym}/edit/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}", :as => "#{f.first}_edit"
      match "admin/#{f.last[:url].to_sym}/create/(:id)(:format)", :controller => "basic_edits", :action => "#{f.first}_create", :as => "#{f.first}_create"
  end
  match "business_inquires" => "business_leads#index"
  match "/business_leads/index" => "business_leads#index"

  root :to => "basics#current_deals"


  # This is for all the Good Reads
    get '/bbd-blog/' => "good_reads#index", :as => 'bbd_blog'
    get '/admin/bbd-blog/manage' => "good_reads#manage", :as => 'manage_bbd_blog'
    get '/admin/bbd-blog/new' => "good_reads#new", :as => "new_good_read"
    get '/admin/bbd-blog/:id/edit' => "good_reads#edit", :as => "edit_good_read"
    get '/bbd-blog/category/:id', :controller => 'good_reads', :action => 'show_categories', :as => "good_reads_category"
    match "/bbd-blog/date" => redirect("/bbd-blog") 
    get '/bbd-blog/date/(:year(/:month))', :controller => 'good_reads', :action => 'show_dates', :as => "good_reads_date"
    resources :good_reads
    
  # This is for all the Quotes

    
    scope "admin" do
      resources :quotes, :as => "quotes"
      resources :widgets, :as => "widgets"
      match 'widgets/move_dim_widgets' => 'widgets#move_dim_widgets', :as => :move_dim_widgets
      resources :categories, :as => "categories"
      resources :sessions, :as => "sessions"
      resources :spreadsheets, :as => "spreadsheets"
      resources :affiliates, :as => "affiliates"
      match 'affiliates/csv_import' => 'affiliates#csv_import'
      resources :customer_details, :as => 'customer_details'
      match 'customer_details/csv_import' => 'customer_details#csv_import'
      match 'widgets/manage' => 'widgets#index', :as => "manage_widgets"
      # resources :business_leads, :as => "business_leads"
    end
    
  #this is for all the Catagories for the good reads

  # This is for the Administration usage.
    resources :admins
    
  # This is for loggin in and out
    get '/admin/login' => 'sessions#new', :as => "login"
    get '/admin/logout' => 'sessions#destroy', :as => "logout"
    get "/admin/business_lead/:id" => "business_leads#show", :as => "admin_business_lead"
    get "/admin/business_leads/" => "business_leads#show_all", :as => "admin_business_leads"
    match '/admin/business_leads/destroy/:id' => 'business_leads#destroy'
    
end