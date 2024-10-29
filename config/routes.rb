Rails.application.routes.draw do
  get("/", {:controller => "super", :action => "homepage"})
  get("/payment/form", {:controller => "super", :action => "payment_form"})
  get("/payment/results", {:controller => "super", :action => "payment_results"})
  get("/random/form", {:controller => "super", :action => "random_form"})
  get("/random/results", {:controller => "super", :action => "random_results"})
  get("/square/form", {:controller => "super", :action => "square_form"})
  get("/square/results", {:controller => "super", :action => "square_results"})
  get("/root/form", {:controller => "super", :action => "root_form"})
  get("/root/results", {:controller => "super", :action => "root_results"})
end
