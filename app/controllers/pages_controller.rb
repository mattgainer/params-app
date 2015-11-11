class PagesController < ApplicationController

  def name
    @name = params[:name].upcase
  end

  def number
    @guess = params[:number].to_i
    if params[:new] == "true"
      Randnum.create(random_number: rand(100))
    end
    @number = Randnum.last.random_number
  end

  def set_number
    Randnum.create(random_number: rand(100))
  end

end
