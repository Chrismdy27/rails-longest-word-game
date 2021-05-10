class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end
  def score

    @word = params[:word]
    @letters = params[:letters]

    if @letters.all? {|letter| @word.include?(letter) }
      puts "10"
    else 
      puts "Sorry you can't built a word out of #{@letters}"
    end
  end
end
