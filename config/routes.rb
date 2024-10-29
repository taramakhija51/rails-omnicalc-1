Rails.application.routes.draw do
  get("/", {:controller => "super", :action => "homepage"})
  get("/payment/new", {:controller => "super", :action => "payment_form"})
  get("/payment/results", {:controller => "super", :action => "payment_results"})
  get("/random/new", {:controller => "super", :action => "random_form"})
  get("/random/results", {:controller => "super", :action => "random_results"})
  get("/square/new", {:controller => "super", :action => "square_form"})
  get("/square/results", {:controller => "super", :action => "square_results"})
  get("/square_root/new", {:controller => "super", :action => "root_form"})
  get("/square_root/results", {:controller => "super", :action => "root_results"})
end
