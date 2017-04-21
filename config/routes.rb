Rails.application.routes.draw do

  get("/flexible/square/:the_number",{:controller => "calculations",:action => "flex_square"})

  get("/flexible/square_root/:the_number",{:controller => "calculations",:action => "flex_square_root"})

  get("/flexible/payment/:basis_points/:number_of_years/:present_value",{:controller => "calculations",:action => "monthly_payment"})

  get("/square/new",{:controller => "calculations",:action => "square_form"})  #static route

  get("/square/results",{:controller => "calculations",:action => "square"}) #query string adds automatically
  #/square/results?number_to_square=5
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
