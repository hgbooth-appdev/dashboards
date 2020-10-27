Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get("/", {:controller => "application", :action => "home"})
  get("/forex", {:controller => "application", :action => "forex"})
  get("/forex/:one", {:controller => "application", :action => "forexOne"})
  get("/forex/:one/:two", {:controller => "application", :action => "forexTwo"})


  
  get("/covid", {:controller => "application", :action => "covid"})


end
