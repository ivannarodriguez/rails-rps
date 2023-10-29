Rails.application.routes.draw do
  get("/") {:controler => "rps", :action => "rules"}
  get("/rock") {:controler => "rps", :action =>}
  get("/paper") {:controler => "rps", :action =>}
  get("scissors") {:controler => "rps", :action =>}
end
