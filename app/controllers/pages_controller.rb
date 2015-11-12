class PagesController < ApplicationController

  def name
    @name = params[:name].upcase
  end

  def number
    @guess = params[:number].to_i
    if params[:new].present?
      Randnum.create(random_number: rand(100))
    end
    @number = Randnum.last.random_number
    if @guess > @number
      @message = "Your Guess Is Too High!!!"
    elsif @guess < @number
      @message = "Your Guess Is Too Low!!!"
    else
      @message = "You Got It!!!"
    end
  end

  def set_number
    Randnum.create(random_number: rand(100))
  end
  def number_form
  end
  def form_result
    @guess = params[:guess].to_i
    if params[:new].present?
      Randnum.create(random_number: rand(100))
    end
    @number = Randnum.last.random_number
    if @guess > @number
      @message = "Your Guess Is Too High!!!"
    elsif @guess < @number
      @message = "Your Guess Is Too Low!!!"
    else
      @message = "You Got It!!!"
    end
  end

end
