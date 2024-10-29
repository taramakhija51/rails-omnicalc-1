class SuperController < ApplicationController
  def homepage
    render({ :template => "layouts/homepage"})
  end
  def square_form
    render({ :template => "layouts/square_form"})
  end

  def square_results
    @num = params.fetch("url_keep").to_f
    @square = @num * @num
    render({ :template => "layouts/square_results"})
  end

  def root_form
    render({ :template => "layouts/root_form"})
  end

  def root_results
    @find_root = params.fetch("find_root").to_f
    @root = @find_root ** 0.5
    render({ :template => "layouts/root_results"})
  end

  def payment_form
    render({ :template => "layouts/payment_form"})
  end

  def payment_results
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

  def random_form
    render({ :template => "layouts/random_form"})
  end
    

  def random_results
    @minimum = params.fetch("min_num").to_f
    @maximum = params.fetch("max_num").to_f
    @random = rand(@minimum..@maximum)
    render({ :template => "layouts/random_results"})
  end
