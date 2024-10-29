class SuperController < ApplicationController
  def blank_square_form
    render({ :template => "layouts/square_form"})
  end

  def results_square_form
    @num = params.fetch("url_keep").to_f
    @square = @num * @num
    render({ :template => "layouts/square_results"})
  end

  def blank_root_form
    render({ :template => "layouts/root_form"})
  end

  def results_root_form
    @find_root = params.fetch("find_root").to_f
    @root = @find_root ** 0.5
    render({ :template => "layouts/root_results"})
  end

  def blank_payment_form
    render({ :template => "layouts/payment_form"})
  end

  def results_payment_form
    @apr = params.fetch("apr").to_f / 100
    @num_years = params.fetch("num_years").to_f
    @apr_monthly = @apr / 12
    @num_months = @num_years * 12
    @principal = params.fetch("principal").to_f
    @numerator = @principal * @apr_monthly
    @denominator = 1 - (1/((1 + @apr_monthly) ** (@num_months)))
    @monthly = (@numerator / @denominator).round(2).to_s(:currency)
    #@inner = ((((@apr / @num_months) + 1) ** @num_months) - 1)
    #@monthly = @principal * @inner

    render({ :template => "layouts/payment_results"})
  end

  def blank_random_form
    render({ :template => "layouts/random_form"})
  end
    

  def results_random_form
    @minimum = params.fetch("min_num").to_f
    @maximum = params.fetch("max_num").to_f
    @random = rand(@minimum..@maximum)
    render({ :template => "layouts/random_results"})
  end
