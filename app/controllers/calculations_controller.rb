class CalculationsController < ApplicationController
    def flex_square
      # params = {"the number"=>"25"}
      @user_provided_number = params["the_number"].to_f
      @squared_number=@user_provided_number**2
      render("calculations/flex_square.html.erb")
    end

    def flex_square_root
      @user_provided_number = params["the_number"].to_f
      @square_rooted_number = (@user_provided_number**0.5).round(2)
      render("calculations/flex_square_root.html.erb")
    end

    #def monthly_payment
    #  @user_provided_basis_points = params["basis_points"].to_f
    #  @user_provided_term = params["number_of_years"].to_f
    #  @user_provided_pv = params["present_value"].to_f
    #  @monthlypayment =
    #end#

    def square_form
      render("calculations/square_form.html.erb")
    end

    def square
      @user_provided_number = params["number_to_square"].to_f #number_to_square key created in form name
      @squared_number=@user_provided_number**2
      render("calculations/square.html.erb")
    end

end
