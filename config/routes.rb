Rails.application.routes.draw do
  # root("/", to: "main#index")
  # OR
  root("main#index")
  get("/about", :to => "about#index")
end
