Rails.application.routes.draw do

  devise_for :users
  root 'pickyposts#index'

  get("/dashboard", { :controller => "dashboard", :action => "index"})

  get("/find", {:controller => "find", :action =>"index"})

  get("/dashboard/:friend", {:controller => "dashboard", :action =>"friend"})

end
