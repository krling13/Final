Rails.application.routes.draw do

  # Routes for the Friend_request resource:
  # CREATE
  get "/friend_requests/new", :controller => "friend_requests", :action => "new"
  post "/create_friend_request", :controller => "friend_requests", :action => "create"

  # READ
  get "/friend_requests", :controller => "friend_requests", :action => "index"
  get "/friend_requests/:id", :controller => "friend_requests", :action => "show"

  # UPDATE
  get "/friend_requests/:id/edit", :controller => "friend_requests", :action => "edit"
  post "/update_friend_request/:id", :controller => "friend_requests", :action => "update"

  # DELETE
  get "/delete_friend_request/:id", :controller => "friend_requests", :action => "destroy"
  #------------------------------

  devise_for :users
  root "bands#index"

  get "/my_savedbands", :controller => "bands", :action => "my_savedbands"
  get "/my_timeline", :controller => "bands", :action => "my_timeline"
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # Routes for the Savedband resource:
  # CREATE
  get "/savedbands/new", :controller => "savedbands", :action => "new"
  post "/create_savedband", :controller => "savedbands", :action => "create"

  # READ
  get "/savedbands", :controller => "savedbands", :action => "index"
  get "/savedbands/:id", :controller => "savedbands", :action => "show"

  # UPDATE
  get "/savedbands/:id/edit", :controller => "savedbands", :action => "edit"
  post "/update_savedband/:id", :controller => "savedbands", :action => "update"

  # DELETE
  get "/delete_savedband/:id", :controller => "savedbands", :action => "destroy"
  #------------------------------

  # Routes for the Band resource:
  # CREATE
  get "/bands/new", :controller => "bands", :action => "new"
  post "/create_band", :controller => "bands", :action => "create"

  # READ
  get "/bands", :controller => "bands", :action => "index"
  get "/bands/:id", :controller => "bands", :action => "show"

  # UPDATE
  get "/bands/:id/edit", :controller => "bands", :action => "edit"
  post "/update_band/:id", :controller => "bands", :action => "update"

  # DELETE
  get "/delete_band/:id", :controller => "bands", :action => "destroy"
  #------------------------------

  # Routes for the Concert resource:
  # CREATE
  get "/concerts/new", :controller => "concerts", :action => "new"
  post "/create_concert", :controller => "concerts", :action => "create"

  # READ
  get "/concerts", :controller => "concerts", :action => "index"

  # UPDATE
  get "/concerts/:id/edit", :controller => "concerts", :action => "edit"
  post "/update_concert/:id", :controller => "concerts", :action => "update"

  # DELETE
  get "/delete_concert/:id", :controller => "concerts", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------
end
