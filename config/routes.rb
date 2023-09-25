Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "home"})

  get("/dice/:quantity/:value", { :controller => "dice", :action => "dice" })
end
