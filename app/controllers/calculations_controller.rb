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

    def flex_monthly_payment
      @user_provided_basis_points = params["basis_points"].to_f
      @user_provided_term = params["number_of_years"].to_f
      @user_provided_pv = params["present_value"].to_f
      @monthlypayment = (@user_provided_pv*(@user_provided_basis_points/10000/12))/(1-((1+(@user_provided_basis_points/10000/12))**((-(@user_provided_term*12)))))
      render("calculations/flex_monthly_payment.html.erb")
      # (1) number to currency and rounding issues here and in form
    end

    def flex_random_number
      @user_provided_min = params["min"]
      @user_provided_max = params["max"]
      @user_generated_array = []
      @random_number = rand()
      render("calculations/flex_random_number.html.erb")
      # (2) figure out how to generate random within boundaries  here and in form
    end

    def square_form
      render("calculations/square_form.html.erb")
    end

    def square
      @user_provided_number = params["number_to_square"].to_f #number_to_square key created in form name
      @squared_number=@user_provided_number**2
      render("calculations/square.html.erb")
    end

    def square_root_form
      render("calculations/square_root_form.html.erb")
    end

    def square_root
      @user_provided_number = params["number_to_square_root"].to_f
      @square_root = @user_provided_number**0.5
      render("calculations/square_root.html.erb")
    end

    def monthly_payment_form
      render("calculations/monthly_payment_form.html.erb")
    end

    def monthly_payment
      @user_provided_APR = params["APR"].to_f
      @user_provided_term = params["term"].to_f
      @user_provided_pv = params["principal"].to_f
      @monthlypayment = ((@user_provided_pv*(@user_provided_APR/100/12))/(1-((1+(@user_provided_APR/100/12))**((-(@user_provided_term*12))))))
      render("calculations/monthly_payment.html.erb")
    end

    def random_number_form
      render("calculations/random_number_form.html.erb")
    end

    def random_number
      @user_provided_min = params["min"].to_f
      @user_provided_max = params["max"].to_f
      @random_number = rand()
      render("calculations/random_number.html.erb")
    end

end
